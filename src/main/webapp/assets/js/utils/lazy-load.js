/**
 @property {class} LazyLoad - lazy load images as the user scrolls.
 The lazyLoader looks for images with a class of 'placeholder' that are
 within the xy of the current viewport. It swaps out their data-src for src.

 It will load any images visible +/- the height of the viewport * the multiplier.

 Call LazyLoad.attach to attach the scroll event, if a true parameter is passed, it will also run instantly.

 If showInstantly is true,  images will be shown as loaded,
 otherwise they will all be shown at once when loading is finished.

 This is a singleton and will only be loaded once. It does not need to be instantiated.
 */

define(function (require) {
    var VIEWPORT_MULTIPLIER = 1.5, // show videos +/- 1.5 of the viewport
        PLACEHOLDER_CLASS = 'placeholder',
        PLACEHOLDER_CONTAINER_CLASS = 'placeholder-container',
        SRC_ATTRIBUTE = 'data-src';

    var $ = require('jquery');

    var LazyLoad = function () {
        var doc = document,
            win = window,
            images,
            viewportTop,
            viewportBottom,
            viewportRight,
            viewportHeight,
            eventAttached = false,
            toLoad = 0,
            loaded = 0,
            currentlyLoading = false;

        var self = this;

        this.attach = function (run, showInstantly) {
            if (typeof showInstantly == 'undefined') {
                showInstantly = false
            }
            if (!eventAttached) {
                $(win).on('scroll', self.run);
                eventAttached = true;
            }

            if (run) {
                self.run(showInstantly);
            }
        };

        this.run = function (showInstantly) {
            if (currentlyLoading) {
                return;
            }

            images = doc.querySelectorAll('.' + PLACEHOLDER_CLASS);
            viewportTop = win.pageYOffset;
            viewportBottom = viewportTop + win.innerHeight;
            viewportRight = win.innerWidth;
            viewportHeight = doc.documentElement.clientHeight;

            viewportHeight *= VIEWPORT_MULTIPLIER;

            self.loadImages(images, showInstantly, false);

        };

        this.isImageInViewport = function (imageElement) {
            var imgCoords = imageElement.getBoundingClientRect(),
                top = (imgCoords.top + win.pageYOffset) + viewportHeight >= viewportTop || false,
                bottom = (imgCoords.top + win.pageYOffset) - viewportHeight <= viewportBottom || false,
                left = imgCoords.left > 0 || false,
                right = imgCoords.left < viewportRight || false;

            return (top && bottom && left && right);
        };

        this.loadImages = function (images, showInstantly, force) {
            toLoad = 0
            loaded = 0;
            currentlyLoading = true;

            var i;
            for (i = 0; i < images.length; i++) {
                // Self-executing function for scope in a look, takes the current
                // indexed image in the array
                if (force || self.isImageInViewport(images[i])) {
                    toLoad++;
                    self.loadImage(images[i], showInstantly);
                }
            }

            if (toLoad == 0) {
                currentlyLoading = false;
            }
        };

        this.loadImage = function (imageElement, showInstantly) {
            var tempImage = doc.createElement('img');
            tempImage.src = imageElement.getAttribute(SRC_ATTRIBUTE);

            // Once we know we have the image loaded, swap out the real one
            tempImage.onload = function () {
                imageElement.src = tempImage.src;
                imageElement.removeAttribute(SRC_ATTRIBUTE);
                if (showInstantly) {
                    $(imageElement).removeClass(PLACEHOLDER_CLASS);
                    $(imageElement).parents('.' + PLACEHOLDER_CONTAINER_CLASS).removeClass(PLACEHOLDER_CONTAINER_CLASS);
                } else {
                    loaded++;
                }

                self.checkFinished();
            }
        };

        this.checkFinished = function () {
            if (loaded >= toLoad) {
                $('.' + PLACEHOLDER_CLASS).each(function () {
                    $(this).removeClass(PLACEHOLDER_CLASS);
                    $(this).parents('.' + PLACEHOLDER_CONTAINER_CLASS).removeClass(PLACEHOLDER_CONTAINER_CLASS);
                });

                currentlyLoading = false;
            }
        };

        return this;
    };

    return new LazyLoad();
});