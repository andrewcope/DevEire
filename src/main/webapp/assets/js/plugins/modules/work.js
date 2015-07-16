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

            self.$select.on('change', function (e) {

//                    self.$topicStreamRow.empty();
//                    self.$offset = 0;
//                    self.BuildRequest();
//                    self.LoadPosts();

            });

        };

        self.selectbox = function () {            
            self.$filter = $('.our-position-dd-filter').find(".list-item");
            self.$filter.hide();
            
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
                self.$selectedVal = $(this).val();

                self.$filter.each(function () {
                    if ($(this).attr("data-filter") === self.$select.val()) {
                        self.$filter.hide();
                        $(this).fadeIn();
                    }
                    if(self.$select.val() === 'all'){
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