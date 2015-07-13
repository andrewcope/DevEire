//truncate
//-----------

define(function(require){

    'use strict';

    var $               = require('jquery'),
        bsp_utils       = require('bsp-utils'),
        truncation      = require('bower/jquery.truncate');

    var Truncate = {

        init : function($item, options) { 
           
            var self = this;
            var settings = {
                maxLines            : options.maxLines,
                truncateString      : options.truncateString
            };

            $item.truncate(settings);
        }
        
    };

    var handler = {

        '_defaultOptions': {
            'maxLines' : 2,
            'truncateString'  :'...'
        },

        // run each time something gets into the DOM
        '_each': function(item) {
            var options = this.option(item);
            var truncate = Object.create(Truncate);
            truncate.init($(item), options);
        },
    };

    return bsp_utils.plugin(false, 'bsp', 'truncate', handler);
});