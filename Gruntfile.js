module.exports = function (grunt) {

    require('bsp-grunt')(grunt, {
        bsp: {
            styles: {
                dir: 'assets/less',
                less: [
                    'main.less'
                ],
                autoprefixer: false
            },
            scripts: {
                dir: 'assets/js',
                rjsConfig: 'main.js',
                rjsModules: [
                    {
                        name: 'main',
                        insertRequire: ['main']
                    }
                ]
            },
            bower: {
                'bsp-utils': [
                    {
                        src: 'bsp-utils.js',
                        dest: 'bower/bsp-utils.js'
                    }
                ],
                'fontawesome': [
                    {
                        src: 'less/*',
                        dest: '../less/bower/fontawesome',
                        expand: true,
                        flatten: true
                    },
                    {
                        src: 'fonts/*',
                        dest: '../fonts',
                        expand: true,
                        flatten: true
                    }
                ],
                'bootstrap': [
                    {
                        src: 'js/modal.js',
                        dest: 'bower/modal.js'
                    },
                    {
                        cwd: 'less/',
                        src: '**/*',
                        dest: '../less/bower/bootstrap',
                        expand: true,
                        flatten: false
                    }
                ],                
                'bsp-carousel': [
                    {
                        cwd: 'dist/',
                        src: 'bsp-carousel.css',
                        dest: '../less/bower/bsp-carousel',
                        expand: true
                    },
                    {
                        cwd: 'dist/',
                        src: '*.js',
                        dest: '', //root of scripts
                        expand: true
                    }
                ],
                'jquery': [
                    {
                        src: 'dist/jquery.js',
                        dest: 'bower/jquery.js'
                    }
                ],
                'requirejs-text': [
                    {
                        src: 'text.js',
                        dest: 'bower/text.js'
                    }
                ],
                'less.js': [
                    {
                        src: 'dist/less-1.7.3.js',
                        dest: 'bower/less.js'
                    }
                ],
                'jquery-ui': [
                    {
                        src: 'jquery-ui.js',
                        dest: 'bower/jquery-ui.js'
                    },
                    {
                        cwd: 'themes/base',
                        src : 'jquery-ui.css',
                        dest: '../less/bower/jquery-ui',
                        expand: true
                    }
                ],
                'truncate': [
                    {
                        src: 'jquery.truncate.js',
                        dest: 'bower/jquery.truncate.js'
                    }
                ]
            }
        }
    });
};