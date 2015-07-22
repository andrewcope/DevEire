// Add class to header on scroll
//-------------------------

define(function (require) {

    'use strict';
    
    var $ = require("jquery");
    var bsp_utils = require('bsp-utils');
    var util = require("util");

    var HeaderScroll = function HeaderScroll($el) {
        var self = this;
        self.$el = $el;

        self.init = function () {
            self.headerScroll();
        };

        self.headerScroll = function () {
            var header = $('#global-header');
            $(window).scroll(function () {
                header.addClass('header-scroll');
                if ($(this).scrollTop() === 0) {
                    header.removeClass('header-scroll');
                }
            });
        };
    };


    var handler = {
        '_each': function (items) {
            var self = this;
            var headerscroll = new HeaderScroll($(items));
            headerscroll.init();
        }
    };

    return bsp_utils.plugin(false, 'bsp', 'header-scroll', handler);
});