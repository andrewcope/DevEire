define(function (require) {
    var $ = require('jquery');

    return {
        dimensions: {
            /** useful for calculating height to set content to */
            footerHeight: function () {
                return $('#global-footer').height();
            },
            headerHeight: function () {
                return $('#global-header').height();
            },
            /** follows what's in ../less/variables/media-queries.less */
            responsiveBreakpoint: function () {
                /*
                 480 xs
                 768 sm
                 1000 md
                 1200 lg
                 */
                var width = $(window).width();
                if (width <= 480) {
                    return 'xs';
                } else if (width <= 768) {
                    return 'sm';
                } else if (width <= 1000) {
                    return 'md';
                } else {
                    return 'lg';
                }
            },
            isMobile: function () {
                if ($('#global-header #mobile-btn').is(':visible')) {
                    return true;
                } else {
                    return false;
                }
            },
            isSmallMobile: function() {
                if ($('#global-header #mobile-dot').is(':visible')) {
                    return true;
                } else {
                    return false;
                }
            },
            resizeEndEvent: function () {
                var resizeTO;
                $(window).resize(function () {
                    if (resizeTO)
                        clearTimeout(resizeTO);
                    resizeTO = setTimeout(function () {
                        $(this).trigger('resizeEnd');
                    }, 200);
                });
            }
        },
        urlQueryArgs: function (url) {
            var args = {};
            var urlParts;
            var urlPartsParts;
            if (typeof url == 'undefined') {
                var url = window.location.href;
            }
            urlParts = url.split('?');
            if (urlParts.length > 1) {
                urlPartsParts = urlParts[1].split('&');
                $.each(urlPartsParts, function (i, pair) {
                    var pairParts = pair.split('=');
                    if (pairParts[1].length) {
                        args[encodeURIComponent(pairParts[0])] = encodeURIComponent(pairParts[1]);
                    }
                });
            }
            return args;
        },
        mailtoUrl: function (overrides) {
            var defaults = {};
            var title = $('title').html();
            var description = $('meta[name=description]').attr('content');
            defaults.url = window.location.href;
            if (title) {
                defaults.subject = title;
            }
            if (description) {
                defaults.body = title;
            }
            var props = $.extend({}, defaults, overrides);
            var args = [];
            if (props.subject) {
                props.subject = props.subject.replace(/&amp;/g, '&');
                args.push('Subject=' + encodeURIComponent(props.subject));
            } else {
                args.push('Subject=' + encodeURIComponent(props.url));
            }
            if (props.body) {
                props.body = props.body.replace(/&amp;/g, '&');
                args.push('Body=' + encodeURIComponent(props.body) + encodeURIComponent('\n\n') + encodeURIComponent(props.url));
            } else {
                args.push('Body=' + encodeURIComponent(props.url));
            }
            return "mailto:?" + args.join("&");
        },
        buildUrl: function (base, args) {
            var url = window.location.href;
            var filteredArgs = [];
            if (typeof base != 'undefined') {
                url = base;
            }
            url += '?';
            if (typeof args == 'object') {
                $.each(args, function (key, val) {
                    if ((typeof val == 'string' || typeof val == 'number') && val) {
                        filteredArgs.push(encodeURIComponent(key) + '=' + encodeURIComponent(val));
                    }
                });
            }
            return url + filteredArgs.join('&');
        },
        getUrlParameter: function (sParam) {

            var sPageURL = window.location.search.substring(1);
            var sURLVariables = sPageURL.split('&');
            for (var i = 0; i < sURLVariables.length; i++)
            {
                var sParameterName = sURLVariables[i].split('=');
                if (sParameterName[0] == sParam)
                {
                    return sParameterName[1];
                }
            }

        },
        cleanArg: function (arg) {
            return (arg != undefined) ? arg : "";
        },
        // fires 'resizeEnd' event when window.resize is over
        scrollEndEvent: function (element) {
            var scrollTO;
            var el;
            if(!element){
              el = $(window);
            }
            else {
              el = element;
            }
            el.scroll(function () {
                if (scrollTO)
                    clearTimeout(scrollTO);
                scrollTO = setTimeout(function () {
                  $(this).trigger('scrollEnd');
                }, 200);
            });
        }
    };
});
