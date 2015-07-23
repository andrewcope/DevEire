// Dev Team
//-------------------------


define(function (require) {

    'use strict';
    var $ = require('jquery'),
            bsp_utils = require('bsp-utils'),
            util = require('util');

    var DevTeam = function ($el) {
        var self = this;
        self.$el = $el;
        self.init = function () {

            self.$teamCard = self.$el.find('.team-fluid-card');
            self.$select = self.$el.find('#filter-dd');
            self.$infoBlock = self.$el.find('#info');
            self.$activeClass = 'active';
            self.$inactiveClass = 'inactive';

            self.$ddFilter = self.$el.find('#dd-filter');
            self.$toggle = self.$el.find('#dd-toggle');

            self.selectInit();
            self.teamCardInit();
            self.shuffles();
            self.infoRow();

            $(window).load(function () {
                $("#team .team-fluid-row:last-child").fadeIn();
                $("#toggle").fadeIn();
            });
            $(window).on('resize', function () {
                $("#info").remove();
                self.infoRow();
            });
        };
        self.teamCardInit = function () {
            $("#team").on("click", ".team-fluid-card.inactive", function () {
                $("#filter li").removeClass(self.$activeClass);
                $('#dd-filter li').removeClass(self.$activeClass);
                $(this).removeClass(self.$inactiveClass);
                self.$teamCard.each(function () {
                    $(this).removeClass(self.$inactiveClass);
                });
            });
            $("#team").on("click", ".team-fluid-card", function () {
                $("#filter li").removeClass(self.$activeClass);
                $(this).removeClass(self.$inactiveClass);
                $('#dd-filter li').removeClass(self.$activeClass);
                self.$teamCard.each(function () {
                    $(this).removeClass(self.$inactiveClass);
                });
            });
        };

        self.selectInit = function () {

            //activate toggle
            self.$toggle.find('a').click(function () {
                self.$ddFilter.slideToggle("slow");
                $("#info").remove();

            });
            //filter 
            self.$ddFilter.find('li').click(function () {
//                self.$ddFilter.slideToggle("slow");
                self.$ddFilter.find('li').removeClass(self.$activeClass);
                $(this).addClass(self.$activeClass);
                self.$infoBlock.remove();
                var dataDept = $(this).attr("data-dept");
                self.$teamCard.each("all" === dataDept ? function () {
                    $(this).removeClass(self.$inactiveClass)
                } : function () {
                    $(this).removeClass(self.$inactiveClass);
                    $(this).attr("data-dept") !== dataDept && $(this).addClass(self.$inactiveClass);
                });
            });
        };

        self.infoRow = function () {
            if (!util.dimensions.isMobile()) {
                var e = 6;
            }
            else {
                var e = 2;
            }
            self.shuffles(e);
            $(".team-fluid-card:not(.team-logo)").click(function () {


                $("#info").remove();
                $(".team-fluid-card:not(.team-logo)").removeClass('active-member');
                var t = $(this).index() + 1,
                        n = $("#team .team-fluid-row > .team-fluid-card").size();
                if (t % e === 0)
                    var i = t;
                else {
                    var i = ((t / e | 0) + 1) * e;
                    i > n && (i = n)
                }

                if ($(this).hasClass('active-member')) {
                    $(".team-fluid-card:not(.team-logo)").removeClass('active-member');
                    $("#info").slideUp();
                }
                else {
                    $(this).addClass('active-member');
                    $("<div id='info'></div>").insertAfter($(".team-fluid-card:eq(" + (i - 1) + ")")), $("#info").append($(".emp-info", this).html()), $("#info").slideDown();
                }

                var activeCard = $('.team-fluid-card.active-member');
                if (activeCard.length) {
                    var activeCardOffset = activeCard.offset().top - 60;
                }
                $('html,body').animate({scrollTop: activeCardOffset}, 500);

            });
        };
        self.shuffles = function (e) {
            if (!util.dimensions.isMobile()) {
                var e = 6;
            }
            else {
                var e = 2;
            }
            function t(e) {
                for (var t, n, i = e.length; i;
                        t = parseInt(Math.random() * i), n = e[--i], e[i] = e[t], e[t] = n)
                    ;
                return e;
            }
            $(".team-logo").each(function () {
                $(this).remove();
            });
            var n = $("#team .team-fluid-row > .team-fluid-card:not(.team-logo)").size(),
                    o = ((n / e | 0) + 1) * e,
                    r = o - n;
            var i = e.length;
            if (r > 0)
                for (i = 0; i < r; i++)
                    $("#team .team-fluid-row:last-child").append("<div class='team-fluid-card team-logo'><img src='/assets/images/dummylogo.png' /></div>");
            var a = $("#team .team-fluid-row:last-child");
            a.html(t(a.children().get()))
        };


    };
    var handler = {
        // run each time something gets into the DOM
        '_each': function (items) {
            var self = this;
            var devteam = new DevTeam($(items));
            devteam.init();
        },
    }

    return bsp_utils.plugin(false, 'bsp', 'dev-test', handler);
});