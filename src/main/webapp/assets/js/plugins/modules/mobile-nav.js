define(function (require) {

    'use strict';

    var $ = require('jquery');
    var bsp_utils = require('bsp-utils');
    var utils = require("util");

    var MobileNav = function ($el) {
        var self = this;
        self.$el = $el;

        self.init = function () {
            utils.dimensions.resizeEndEvent();
            self.$mobileNavIcon = $("#mobile-btn");
            self.$body = $("body");
            self.$mobileNav = $("#mobile-nav");
            self.$globalHeader = $("#global-header");
            self.$mobileNavActive = true;

            $(window).bind('resizeEnd', function () {
                if (!utils.dimensions.isMobile()) {
                    if (self.$mobileNavActive === true)
                        self.mobileNavReset();
                        console.log('reset');
                }
            });

            if (utils.dimensions.isMobile()) {
                self.iconToggle();
                console.log('mobile');
            }
        };

        self.mobileNavInit = function () {

            self.$globalHeader.addClass('nav-open');
            self.$body.addClass("nav-open");
            self.$mobileNav.fadeIn();
            self.moblileFooterCopy();
        };

        self.moblileFooterCopy = function () {
            self.$footerClone = $('#global-footer').find('.footer-dev-details');
            self.$footerClone.clone();
            self.$mobileNav.append(self.$footerClone);
        }

        self.mobileNavReset = function () {
            self.$globalHeader.removeClass('nav-open');
            self.$mobileNav.fadeOut('fast');
            self.$body.removeClass("nav-open");
            self.$mobileNavIcon.removeClass("active");
            self.$mobileNavActive = false;
        };

        self.iconToggle = function () {
            self.$mobileNavIcon.click(function () {
                if ($(this).hasClass('active')) {
                    $(this).removeClass('active');
                    self.$mobileNavActive = false;
                }
                else {
                    $(this).addClass('active');
                    self.$mobileNavActive = true;
                }

                if (self.$mobileNavActive === true) {
                    self.mobileNavInit();
                }
                else {
                    self.mobileNavReset();
                }
            });
        };
    };


    var handler = {
        '_each': function (items) {
            var self = this;
            var mobilenav = new MobileNav($(items));
            mobilenav.init();
        }
    };

    return bsp_utils.plugin(false, 'bsp', 'mobile-nav', handler);
});