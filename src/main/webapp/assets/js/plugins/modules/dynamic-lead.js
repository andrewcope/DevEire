// dynamic lead
//-------------------------

define(function (require) {

    'use strict';

    var $ = require('jquery'),
            bsp_utils = require('bsp-utils'),
            carousel = require('bsp-carousel'),
            utils = require("util");

    var DynamicLead = function ($el) {
        var self = this;
        self.$el = $el;
        self.settings = {
            stage: {
                themeConfig: {
                    infinite: true,
                    speed: 500,
                    fade: true,
                    cssEase: 'linear',
                    slidesToShow: 1,
                    slidesToScroll: 1,
                    arrows: true
                }
            }
        };

        self.init = function () {

            self.$stage = self.$el.children('[class$="-stage"]');

            // init both carousels
            self.stageCarousel = carousel.init(self.$stage, self.settings.stage);

            $(window).bind('resizeEnd', function () {
                if (!utils.dimensions.isMobile()) {
                    self.stageCarousel.bind('beforeChange', self.textFadeOut);
                    self.stageCarousel.bind('afterChange', self.textFadeIn);
                }
            });

            if (!utils.dimensions.isMobile()) {
                self.stageCarousel.bind('beforeChange', self.textFadeOut);
                self.stageCarousel.bind('afterChange', self.textFadeIn);
            }

        }
        self.textFadeOut = function () {
            self.$text = self.$stage.find('.carousel-content');
            self.$text.fadeOut(250);
        };
        self.textFadeIn = function () {

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
            var dynamiclead = new DynamicLead($(items));
            dynamiclead.init();
        },
    }

    return bsp_utils.plugin(false, 'bsp', 'dynamic-lead', handler);
});