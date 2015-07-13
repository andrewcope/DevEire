/**
 *  This JS is what we will use to precompile our plugins
 *  for most cases, we will list our modules here as we want to precompile most everything
 *  only in exception cases, will we allow for dynamic loading of modules and other assets
 *
 *  the goa
 *
 */

define(function (require) {
    'use strict';

    require('bsp-utils'); // bsp-utils is pulled in via bower and includes standard utils and the bsp-plugin
    require('bsp-share');
    require('slick');

    require('plugins/modules/stretch-bg');
    require('plugins/modules/home-dl');
    require('plugins/modules/team');
    require('plugins/modules/clients');
    
    return this;
});
