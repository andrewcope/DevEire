// Scroll back to top
//-------------------------

define(function (require) {

    'use strict';

    var $ = require("jquery");
    var bsp_utils = require('bsp-utils');
    var util = require("util");

    var BackToTop = function ($el) {
        var self = this;
        self.$el = $el;

        self.init = function () {
            self.clickHandler();
            console.log('init');
        };

        self.clickHandler = function () {
            $("#back-to-top").on("click", function (e) {
                e.preventDefault();
                console.log('click');
                $("html, body").animate({
                    scrollTop: 0
                }, 600, console.log('click'));
            });
        };
    };


    var handler = {
        '_each': function (items) {
            var self = this;
            var backtotop = new BackToTop($(items));
            backtotop.init();
        }
    };

    return bsp_utils.plugin(false, 'bsp', 'back-to-top', handler);
});