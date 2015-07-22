// Dev Clients
//-------------------------


define(function (require) {

    'use strict';

    var $ = require('jquery'),
            bsp_utils = require('bsp-utils'),
            util = require('util');

    var DevClients = function ($el) {
        var self = this;
        self.$el = $el;

        self.init = function () {

            self.$cardRow = self.$el.find('.card-row');
            self.$cardWrapper = self.$el.find('.card-base');
            self.$cardAnchor = self.$cardWrapper.find('.team-anchor');
            self.$activeClass = 'active';
            self.CardActions();
        };


        self.CardActions = function () {
            self.timeoutFunction();

            var t = !1;

            var clickTrigger = function ($el) {
                self.$cardWrapper.removeClass('active');

                $el.on("click", activeCard);
                console.log('click');
            };


            var activeCard = function ($el) {
                $el.preventDefault();
                var t = $(this),clickTrigger = t.hasClass("active"), i = t.parents(".card-row");
                i.find(".card-base").removeClass("active"), clickTrigger ? t.removeClass("active") : t.addClass("active"), descRowInit(i, function () {
                    clickTrigger || cardInit(t);
                });
            };


            //r
            var cardInit = function ($el) {
                //n
                self.$descRow = $('<section class="card-info-row"></section>');
                //i
                self.$descClone = $el.find(".card-desc > *").clone();
                self.$descClone.appendTo(self.$descRow);
                var i;
                self.$rowParents = $el.parents('.card-row');
                self.$devCard = self.$rowParents.find('.card-base');
                self.$devCard.each(function ($el) {
                    i || $(this).position().top > 0 && (i = $el);
                });
                var s = $el.index() + 1, l = s + (i - s % i) % i;
                l > self.$devCard.length && (l = self.$devCard.length),
                        self.$descRow.hide(),
                        self.$devCard.eq(l - 1).after(self.$descRow),
                        self.$descRow.slideDown('slow'),
                        self.$descRow.animate({opacity: 1}, 'slow'),
                        window.location.hash = "!" + $el.attr('id');
                self.$scrollPos = self.$rowParents.find('.card-base.active');
                $('html,body').animate({scrollTop: $(self.$scrollPos).offset().top - 65}, 500);
            };
            var descRowInit = function ($el, n) {
                self.$teamRow = $el.find('.card-info-row');
                self.$teamRow.length || n(),
                        self.$teamRow.slideUp(t ? 10 : "fast", function () {
                            self.$teamRow.remove(), window.location.hash = "!", n();
                        });
            };
            self.$cardRow.each(function () {
                {
                    var i;
                    self.$teamCard = $(this).find('.card-base');
                    self.$cardRow.find('.card-base');
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
            var devclients = new DevClients($(items));
            devclients.init();
        },
    }

    return bsp_utils.plugin(false, 'bsp', 'dev-card-actions', handler);
});