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
            self.CardActions();
        };


        self.CardActions = function () {
            self.timeoutFunction();

            var t = !1;
            //n 
            var clickTrigger = function ($el) {
                $el.on("click", activeCard);
            };
            //i
            var activeCard = function ($el) {
                $el.preventDefault();
                var t = $(this), clickTrigger = t.hasClass("active"), i = t.parents(".team-row");
                i.find(".team-card").removeClass("active"), clickTrigger ? t.removeClass("active") : t.addClass("active"), o(i, function () {
                    clickTrigger || cardInit(t);
                });
                var activeId = "#" + this.getAttribute('id');

                if (self.$cardWrapper.hasClass('active')) {
                    $('html,body').animate({scrollTop: $(activeId).offset().top - 65}, 500);
                }
            };
            //r
            var cardInit = function ($el) {
                //n
                self.$descRow = $('<section class="team-desc-row"></section>');
                //i
                self.$descClone = $el.find(".team-desc > *").clone();
                self.$descClone.appendTo(self.$descRow);
                var i;
                self.$rowParents = $el.parents(".team-row");
                self.$devCard = self.$rowParents.find(".team-card");
                self.$devCard.each(function ($el) {
                    i || $(this).position().top > 0 && (i = $el);
                });
                var s = $el.index() + 1, l = s + (i - s % i) % i;
                l > self.$devCard.length && (l = self.$devCard.length),
                        self.$descRow.hide(),
                        self.$devCard.eq(l - 1).after(self.$descRow),
                        self.$descRow.slideDown("slow"),
                        self.$descRow.animate({opacity: 1}, "slow"),
                        window.location.hash = "!" + $el.attr("id");
            };
            var o = function (e, n) {
                self.$teamRow = e.find(".team-desc-row");
                self.$teamRow.length || n(),
                        self.$teamRow.slideUp(t ? 10 : "fast", function () {
                            self.$teamRow.remove(), window.location.hash = "!", n();
                        });
            };
            self.$cardRow.each(function () {
                {
                    var i;
                    self.$teamCard = $(this).find(".team-card");
                    self.$cardRow.find(".team-card");
                }
                self.$teamCard.each(function (e) {
                    i || $(this).position().top > 0 && (i = e);
                }), 1 === i && (t = !0), self.$teamCard.each(function () {
                    var e = $(this);
                    clickTrigger(e);
                });
            }), window.location.hash && setTimeout(function () {
                var e = window.location.hash.replace(/#!/, ""), t = $("#" + e);
                t.length && (t.trigger("click"));
            }, 500);

        };
        self.timeoutFunction = function () {
            setTimeout(function () {
                self.$winWidth = $(window).width();
                $(window).on("resize", function () {
                    $(window).width() !== self.$winWidth &&
                            (self.$winWidth = $(window).width(),
                                    self.$cardRow.find(".active").trigger("click"));
                });
            }, 1000);
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

    return bsp_utils.plugin(false, 'bsp', 'dev-team', handler);
});