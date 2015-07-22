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
    require('bsp-carousel-plugin');
    require('bsp-carousel-thumbnav-plugin');
    
    require('plugins/modules/truncate');
    require('plugins/modules/stretch-bg');
    require('plugins/modules/dynamic-lead');
    require('plugins/modules/team');
    require('plugins/modules/clients');
    require('plugins/modules/gallery-inline');
    require('plugins/modules/work');
    require('plugins/modules/mobile-nav');
    require('plugins/modules/header-scroll');
    require('plugins/modules/test');
    
    return this;
});
