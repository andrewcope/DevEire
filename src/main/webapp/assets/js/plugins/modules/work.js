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
            self.$select.selectBoxIt({
                showEffect: "slideDown",
                hideEffect: "slideUp"
            });
            self.$select.bind({
                // Binds to the 'open' event on the original select box
                "open": function () {
                    // Adds the Twitter Bootstrap 'dropup' class to the drop down
                    $(this).data("selectBox-selectBoxIt").dropdown.addClass("dropup");
                },
                // Binds to the 'close' event on the original select box
                "close": function () {
                    // Removes the Twitter Bootstrap 'dropup' class from the drop down
                    $(this).data("selectBox-selectBoxIt").dropdown.removeClass("dropup");
                }

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