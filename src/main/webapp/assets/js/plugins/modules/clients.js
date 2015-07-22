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

            self.$cardRow = self.$el.find('.client-row');
            self.$cardWrapper = self.$el.find('.client-card-outer');
            self.$cardAnchor = self.$cardWrapper.find('.team-anchor');
            self.$activeClass = 'active';
            self.CardActions();
        };


        self.CardActions = function () {
            self.timeoutFunction();

            var t = !1;

            var clickTrigger = function ($el) {
                $el.on("click", activeCard);
            };
            var activeCard = function ($el) {
                $el.preventDefault();
                var activeCard = $(this);
                var clickTrigger = activeCard.hasClass("active");
                var activeCardParent = activeCard.parents(".client-row");

                activeCardParent.find(".client-card-outer").removeClass("active");

                if (activeCard.hasClass("active")) {
                    activeCard.removeClass("active");
                }
                else {
                    activeCard.addClass("active");
                }

                descRowInit(activeCardParent, function () {
                    clickTrigger || cardInit(activeCard);
                });
            };


            //r
            var cardInit = function ($el) {
                //n
                self.$descRow = $('<section class="client-desc-row"></section>');
                //i
                self.$descClone = $el.find(".client-desc > *").clone();
                self.$descClone.appendTo(self.$descRow);
                var i;
                self.$rowParents = $el.parents(".client-row");
                self.$devCard = self.$rowParents.find(".client-card-outer");
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
                self.$scrollPos = self.$rowParents.find('.client-card-outer.active');
                $('html,body').animate({scrollTop: $(self.$scrollPos).offset().top - 65}, 500);
            };
            var descRowInit = function ($el, n) {
                self.$teamRow = $el.find(".client-desc-row");
                self.$teamRow.length || n(),
                        self.$teamRow.slideUp(t ? 10 : "fast", function () {
                            self.$teamRow.remove(), window.location.hash = "!", n();
                        });
            };
            self.$cardRow.each(function () {
                {
                    var i;
                    self.$teamCard = $(this).find(".client-card-outer");
                    self.$cardRow.find(".client-card-outer");
                }
                self.$teamCard.each(function (e) {
                    i || $(this).position().top > 0 && (i = e);
                }),
                        1 === i && (t = !0), self.$teamCard.each(function () {
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

    return bsp_utils.plugin(false, 'bsp', 'dev-clients', handler);
});