(function ($) {
            "use strict";
            var PUS = {};
                /*==========================================
                        :: slicknav
                ==========================================*/
                PUS.slicknav = function () {
                    $("#main-menu").slicknav({
                        allowParentLinks: true,
                        prependTo: '#mobile-menu-wrap',
                        label: '',
                    });

                    $(".mobile-menu-trigger").on("click", function(e) {
                        $(".mobile-menu-container").addClass("menu-open");
                        e.stopPropagation();
                    });

                    $(".mobile-menu-close").on("click", function(e) {
                        $(".mobile-menu-container").removeClass("menu-open");
                        e.stopPropagation();
                    });  
                };
                $(document).ready(function () {
                    PUS.slicknav();
                });
            })(jQuery);