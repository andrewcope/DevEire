define(function (require) {

    'use strict';

    var $ = require('jquery');
    // var ui = require('jqueryui');
    var bsp_utils = require('bsp-utils');
    var utils = require("util");
    var selectboxit = require('selectbox');

    var DevWork = function ($el) {
        var self = this;
        self.$el = $el;

        self.init = function () {
            utils.dimensions.resizeEndEvent();

            self.$select = self.$el.find('select');

            self.selectbox();

        };

        self.selectbox = function () {
            self.$filter = $('.filter-results').find(".list-item");
            self.$workInfo = $('.work-wrapper').find(".work-info");
            self.$filterWrapper = $('.work-fluid-container.filter-results');
            self.$filter.hide();
            self.$workInfo.hide();

            self.$select.selectBoxIt({
                showEffect: "slideDown",
//                hideEffect: "slideUp",
                showFirstOption: false
            });
            self.$select.bind({
                "open": function () {
                    $(this).data("selectBox-selectBoxIt").dropdown.addClass("dropup");
                },
                "close": function () {
                    $(this).data("selectBox-selectBoxIt").dropdown.removeClass("dropup");
                }
            });
            self.$select.on("change", function () {
                self.$scrollPos = $('.work-wrapper').find(self.$select);
                
                if (self.$filterWrapper.length) {
                    var scrollPos = self.$filterWrapper.offset().top;
                }
                console.log(scrollPos);
                $('html,body').animate({scrollTop: scrollPos - 65}, 500);
                self.$workInfo.fadeIn();
                self.$selectedVal = $(this).val();
                self.$filter.each(function () {
                    if ($(this).attr("data-pos") === self.$select.val()) {
                        self.$filter.hide();
                        $(this).fadeIn();
                    }
                    if (self.$select.val() === 'all') {
                        self.$filter.fadeIn();
                    }
                });
            });
        };
    };


    var handler = {
        '_each': function (items) {
            var self = this;
            var devwork = new DevWork($(items));
            devwork.init();
        }
    };

    return bsp_utils.plugin(false, 'bsp', 'work-dd', handler);
});