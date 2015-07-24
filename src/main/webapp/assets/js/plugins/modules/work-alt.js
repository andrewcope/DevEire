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
            self.shuffleCards();
            self.infoRow();

            $(window).load(function () {
                $("#team .team-fluid-row:last-child").fadeIn();
                $("#toggle").fadeIn();
            });
            $(window).on('resize', function () {
                self.infoRow();
            });
            
            var togglePos;

            if (!util.dimensions.isMobile()) {
                togglePos = $('.toggle-row').offset().top - 100;
            }
            else {
                togglePos = $('.toggle-row').offset().top - 50;
            }

            $(window).scroll(function () {
                if ($(this).scrollTop() > togglePos) {
                    $('.toggle-row').addClass('fixed');
                }
                else {
                    $('.toggle-row').removeClass('fixed');
                }
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

                $(".team-fluid-card:not(.team-logo)").removeClass('active-member');
                if ($(this).hasClass('active')) {
                    self.$ddFilter.slideUp('slow');
                    $(this).removeClass('active');
                }
                else {
                    $(this).addClass('active');
                    self.$ddFilter.slideDown('slow');
                }
            });


            //filter 
            $('#dd-filter li').click(function () {
                $('#dd-filter li').removeClass(self.$activeClass);
                if ($(this).hasClass('active')) {

                }
                else {
                    $(this).addClass(self.$activeClass);
                }
                if ($('#info').hasClass('open')) {
                    $("#info").slideUp();
                    $("#info").removeClass('open');
                }
                var dataDept = $(this).attr("data-dept");
                self.$teamCard.each("all" === dataDept ? function () {
                    $(this).removeClass(self.$inactiveClass);
                } : function () {
                    $(this).removeClass(self.$inactiveClass);
                    $(this).attr("data-dept") !== dataDept && $(this).addClass(self.$inactiveClass);
                });
            });
        };

        self.infoRow = function () {
            if (!util.dimensions.isMobile()) {
                var gridSize = 6;
                self.shuffleCards(gridSize);
            }
            else {
                var gridSize = 2;                
            }

            $(".team-fluid-card:not(.team-logo)").click(function () {
                //remove active class from all cards

                if ($(this).hasClass('active-member')) {
                    $(this).removeClass('active-member');
                    $("#info").slideUp();

                    $(".team-fluid-card:not(.team-logo)").removeClass('active-member');
                    $("#info").slideUp();
                    $("#info").removeClass('open');
                }
                else {
                    $("#info").remove();
                    $(".team-fluid-card:not(.team-logo)").removeClass('active-member');

                    var cardPos = $(this).index() + 1,
                            n = $("#team .team-fluid-row > .team-fluid-card").size();
                    if (cardPos % gridSize === 0)
                        var i = cardPos;
                    else {
                        var i = ((cardPos / gridSize | 0) + 1) * gridSize;
                        i > n && (i = n);
                    }

                    $(this).addClass('active-member');
                    $("<div id='info'></div>").insertAfter($(".team-fluid-card:eq(" + (i - 1) + ")"));
                    $("#info").append($(".emp-info", this).html());
                    $("#info").slideDown();
                    $("#info").addClass('open');

                    var activeCard = $('.team-fluid-card.active-member');
                    if (activeCard.length) {
                        var activeCardOffset = activeCard.offset().top - 60;
                    }

                    $('html,body').animate({scrollTop: activeCardOffset}, 500);
                }
                //trigger click to close filter dropdown
                if (self.$toggle.find('a').hasClass('active')) {
                    self.$toggle.find('a').trigger("click");
                    console.log('active');

                }
                else {
                    //
                }



            });
        };
        self.shuffleCards = function (gridSize) {
            if (!util.dimensions.isMobile()) {
                var gridSize = 6;
            }
            else {
                var gridSize = 2;
            }
            function cardPos(gridSize) {
                for (var cardPos, n, i = gridSize.length; i;
                        cardPos = parseInt(Math.random() * i),
                        n = gridSize[--i],
                        gridSize[i] = gridSize[cardPos],
                        gridSize[cardPos] = n)
                    ;
                return gridSize;
            }
            $(".team-logo").each(function () {
                $(this).remove();
            });
            var memberCards = $("#team .team-fluid-row > .team-fluid-card:not(.team-logo)").size(),
                    o = ((memberCards / gridSize | 0) + 1) * gridSize,
                    r = o - memberCards;
            var i = gridSize.length;
            if (r > 0)
                for (i = 0; i < r; i++)
                    $("#team .team-fluid-row:last-child").append("<div class='team-fluid-card team-logo'><img src='/assets/images/dummylogo.png' /></div>");
            var a = $("#team .team-fluid-row:last-child");
            a.html(cardPos(a.children().get()));
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

    return bsp_utils.plugin(false, 'bsp', 'dev-work-alt', handler);
});