/** stretch a div to take up all content area minus header and footer */
define(function(require){
    var bsp_utils = require('bsp-utils');
    var $ = require("jquery");
    var util = require("util");

    var StretchMe = function StretchMe($el) {
        var self = this;

        self.setMinHeight = function() {
            var footerHeight = util.dimensions.footerHeight();
            var headerHeight = util.dimensions.headerHeight();
            var offsetHeight = $(window).height() - footerHeight;
            $el.css({ 'min-height' : offsetHeight + 'px' });
        };

        self.init = function() {
            self.$el = $el;
            $(window).on('resize', self.setMinHeight);
            self.setMinHeight();
            console.log(util.dimensions.footerHeight());
            console.log(util.dimensions.headerHeight());
        };

        self.init();
    };


    var handler = {
        '_each': function(item) {
            new StretchMe($(item));
        }
    };

    return bsp_utils.plugin(false, 'bsp', 'stretch-bg', handler);
});