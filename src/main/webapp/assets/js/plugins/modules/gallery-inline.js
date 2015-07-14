// Inline Gallery
//-------------------------

define(function (require) {

    'use strict';

    var $ = require('jquery'),
            bsp_utils = require('bsp-utils'),
            carousel = require('bsp-carousel');

    var InlineGallery = function ($el) {
        var self = this;
        self.$el = $el;
        self.settings = {
    		nav: {
                themeConfig: {
                    centerMode: true,
                    centerPadding: '0px',
                    focusOnSelect: true,
                    rows : 3,
                    slidesPerRow: 3,
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            },
            stage: {
                themeConfig: {
                    arrows: true,
                    fade:true,
                    infinite:false,
                    prevArrow : self.$el.find('.gallery-toolbar .gallery-toolbar-control-prev'),
                    nextArrow : self.$el.find('.gallery-toolbar .gallery-toolbar-control-next')
                }
            }
    	};

        self.init = function () {

            self.$stage = self.$el.children('[class$="-stage"]');
            self.$thumb = self.$el.children('[class$="-thumb"]');
            self.$btnInfo = self.$el.find('.gallery-toolbar-info');
            self.$btnThumb = self.$el.find('.gallery-toolbar-thumb');
            self.$counter = self.$el.find('.gallery-toolbar-control-count');
            self.$galleryCaption = self.$el.find('.gallery-stage-item-caption');
            
            self.stageCarousel = carousel.init(self.$stage, self.settings.stage);
            self.stageCarousel.bind('beforeChange', self.updateCount);

            self.$btnThumb.on('click', function () {
                if (!self.$thumb.is('.front')) {
                    self.$thumb.addClass('front');
                    self.$thumb.fadeIn();
                } else {
                    self.$thumb.fadeOut(function () {
                        $(this).removeClass('front').removeAttr('style');
                    });
                }
            });

            self.$btnInfo.on('click', function () {
                if(self.$galleryCaption.hasClass('active')){
                    self.$galleryCaption.removeClass('active');
                    self.$galleryCaption.fadeOut();
                }
                else{
                    self.$galleryCaption.addClass('active');
                    self.$galleryCaption.fadeIn();
                }
            });
            
            self.$thumb.find('[class$="-item"]').on('click', function (e) {
                self.goToSlide($(this));
            });

        }
        self.goToSlide = function (item) {
            var id = item.data('slide-rel'),
                    slide = self.$stage.find('[data-slide-id="' + id + '"]');

            self.stageCarousel.goTo(slide.index());
            
            self.$thumb.fadeOut(function () {
                $(this).removeClass('front').removeAttr('style');
            });

        }
        self.updateCount = function (e, slick, currentSlide, nextSlide) {
            var slideCount = slick.slideCount,
                    counter = (nextSlide + 1) + '/' + slideCount;

            self.$counter.text(counter);

        }

    }

    var handler = {
        // run each time something gets into the DOM
        '_each': function (items) {
            var self = this;
            var inlinegallery = new InlineGallery($(items));
            inlinegallery.init();
        },
    }

    return bsp_utils.plugin(false, 'bsp', 'inline-gallery', handler);
});