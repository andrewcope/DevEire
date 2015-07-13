(function () {
    'use strict';

    require.config({
        paths: {
            'jquery': 'bower/jquery',
            'jqueryui': 'bower/jquery-ui',
            'bsp-utils': 'bower/bsp-utils',
            'bridget': 'bower/bridget'
        },
        shim: {
            'bower/modal': ['jquery'],
            'bower/jquery.truncate': ['jquery'],
            'bower/isotope': ['bridget']
        },
        urlArgs: 'bust=' + (new Date()).getTime(),
        waitSeconds: 15,
        wrap: true
    });

    define(function (require) {
        var $ = require('jquery'),
            ui = require('jqueryui'),
            mediator = require('mediator'),
            utils = require('util'),
            plugins = require('plugins');

        utils.scrollEndEvent();

    });
})();