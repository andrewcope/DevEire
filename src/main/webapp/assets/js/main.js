(function () {
    'use strict';

    require.config({
        paths: {
            'jquery': 'bower/jquery',
            'selectbox': 'bower/jquery.selectBoxit',
//            'jqueryui': 'bower/jquery-ui',
            'jquery-ui-widget': 'bower/jquery-ui/ui/jquery.ui.widget',
            'bsp-utils': 'bower/bsp-utils'
        },
        shim: {
            'bower/modal': ['jquery'],
            'bower/jquery.truncate': ['jquery'],
            'selectbox': {
                deps: ['jquery', 'jquery-ui-widget'],
                exports: 'jQuery.selectBox'
            }
        },
        urlArgs: 'bust=' + (new Date()).getTime(),
        waitSeconds: 15,
        wrap: true
    });

    define(function (require) {
        var $ = require('jquery'),
                mediator = require('mediator'),
                utils = require('util'),
                plugins = require('plugins');

        utils.scrollEndEvent();

    });
})();