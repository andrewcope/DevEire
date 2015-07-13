// photo gallery modules
//-------------------------


define(function (require) {

    'use strict';

    var $ = require('jquery'),
            bsp_utils = require('bsp-utils'),
            slick = require('slick'),
            util = require('util');

    var HomeDL = function ($el) {
        var self = this;
        self.$el = $el;

        self.$lead = $('#dev-lead');
        self.init = function () {
            self.leadInit();
            self.textSlide();
        };
        self.leadInit = function () {
            self.$lead.slick({
                infinite: true,
                speed: 500,
                fade: true,
                cssEase: 'linear',
                slidesToShow: 1,
                slidesToScroll: 1,
                arrows: true
            });
            // On before slide change
            self.$lead.on('afterChange', function (event, slick, currentSlide, nextSlide) {
                self.textSlide();
            });

            // On before slide change
            self.$lead.on('beforeChange', function (event, slick, currentSlide, nextSlide) {
                console.log(nextSlide);
                var item = self.$lead.slick('slickCurrentSlide');

                self.$text = self.$lead.find('.carousel-content');
//                var text = self.$lead.find('.data-slick-index:eq(' + item + ') .carousel-content');

                self.$text.fadeOut(250);
            });
        }



        self.textSlide = function () {
            var item = self.$lead.slick('slickCurrentSlide');

            self.$text = self.$lead.find('.carousel-content');

//                var text = owl.find('.owl-item:eq(' + item + ') .right-col');
//                var img = owl.find('.owl-item:eq(' + item + ') .left-col');

            self.$text.show().css({
                'margin-right': '-100px',
                opacity: 0
            })
                    .animate({
                        'margin-right': '0',
                        opacity: 1
                    }, 750);
        };

    }


    var handler = {
        // run each time something gets into the DOM
        '_each': function (items) {
            var self = this;
            var homedl = new HomeDL($(items));
            homedl.init();
        },
    }

    return bsp_utils.plugin(false, 'bsp', 'home-dl', handler);
});