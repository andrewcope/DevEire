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

            self.$cardRow = self.$el.find('.team-row');
            self.$cardWrapper = self.$el.find('.team-card');
            self.$cardAnchor = self.$cardWrapper.find('.team-anchor');
            self.$activeClass = 'active';
            self.test();

            $("#toggle a").click(function () {
                $("#filter").slideToggle("slow", function () {
                })
            })
            $("#filter li").click(function () {
                $("#filter li").removeClass("active"), $(this).addClass("active"), $("#info").remove();
                var e = $(this).attr("data-dept");
                $(".person").each("all" == e ? function () {
                    $(this).removeClass("inactive")
                } : function () {
                    $(this).removeClass("inactive");
                    $(this).attr("data-dept") != e && $(this).addClass("inactive");
                })
            })

            $("#people").on("click", ".person.inactive", function () {
                $("#filter li").removeClass("active");
                $(this).removeClass("inactive"), $(".person").each(function () {
                    $(this).removeClass("inactive")
                })
            })

            $(window).load(function () {
                $("#people .row:last-child").fadeIn();
                $("#toggle").fadeIn()
            })
        };

        self.test = function () {
            function shuffles(e) {
                function t(e) {
                    for (var t, n, i = e.length; i; t = parseInt(Math.random() * i), n = e[--i], e[i] = e[t], e[t] = n)
                        ;
                    return e
                }
                $(".blank").each(function () {
                    $(this).remove()
                });
                var n = $("#people .row > .person:not(.blank)").size(),
                        o = ((n / e | 0) + 1) * e,
                        r = o - n;
                var i = e.length
                if (r > 0)
                    for (i = 0; i < r; i++)
                        $("#people .row:last-child").append("<div class='person col-sm-2 blank'><img src='http://www.hitcents.com/assets/b2b/people/placeholder.jpg' /></div>");
                var a = $("#people .row:last-child");
                a.html(t(a.children().get()))
            }

            var e = 6;
            shuffles(e), $(".person:not(.blank)").click(function () {
                $("#info").remove();
                var t = $(this).index() + 1,
                        n = $("#people .row > .person").size();
                if (t % e == 0)
                    var i = t;
                else {
                    var i = ((t / e | 0) + 1) * e;
                    i > n && (i = n)
                }
                $("<div id='info'></div>").insertAfter($(".person:eq(" + (i - 1) + ")")), $("#info").append($(".info", this).html()), $("#info").show()
            })


        }

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