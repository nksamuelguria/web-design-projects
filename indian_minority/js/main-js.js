//jQuery for page scrolling feature - requires jQuery Easing plugin
		$(function () {
			$('a.page-scroll').bind('click', function (event) {
				var $anchor = $(this);
				$('html, body').stop().animate({
					scrollTop: $($anchor.attr('href')).offset().top
				}, 100, 'easeInOutExpo');
				event.preventDefault();
			});
		});

		

		$('.intitative-cards').slick({
			dots: true,
			infinite: false,
			speed: 300,
			slidesToShow: 3,
			slidesToScroll: 1,
			centerPadding: '40px',
			responsive: [
				{
					breakpoint: 991,
					settings: {
						slidesToShow: 2,
						slidesToScroll: 1,
						infinite: true,
						dots: true
					}
				},
				{
					breakpoint: 600,
					settings: {
						slidesToShow: 2,
						slidesToScroll: 2
					}
				},
				{
					breakpoint: 480,
					settings: {
						slidesToShow: 1,
						slidesToScroll: 1
					}
				}

			]
		});
		$('.news-slider').slick({
			dots: true,
			infinite: false,
			speed: 300,
			slidesToShow: 3,
			slidesToScroll: 1,
			centerPadding: '40px',
			responsive: [
				{
					breakpoint: 991,
					settings: {
						slidesToShow: 2,
						slidesToScroll: 1,
						infinite: true,
						dots: true
					}
				},
				{
					breakpoint: 600,
					settings: {
						slidesToShow: 2,
						slidesToScroll: 2
					}
				},
				{
					breakpoint: 480,
					settings: {
						slidesToShow: 1,
						slidesToScroll: 1
					}
				}

			]
		});

		$(".navbar-toggler-icon").click(function(){
			$(".offcanvas-collapse").toggleClass("open");
		});
		$(".btn-close").click(function(){
			$(".offcanvas-collapse").removeClass("open");
		});

		function mainScript() {
            "use strict";

            const offcanvasToggle = document.querySelector(
                '[data-bs-toggle="offcanvas"]',
            );
            const offcanvasCollapse = document.querySelector(".offcanvas-collapse");

            offcanvasToggle.addEventListener("click", function () {
                offcanvasCollapse.classList.toggle("open");
            });
            $("header nav .nav-item .nav-link").on("click", function(){
                setTimeout(function() {
                    offcanvasCollapse.classList.remove("open");
                }, 100);
                
            });
			$("header nav .member-btn .btn").on("click", function(){
                setTimeout(function() {
                    offcanvasCollapse.classList.remove("open");
                }, 100);
                
            })  
        };

		$(function () {
			$('.slick-next.slick-arrow').addClass('fa-solid fa-angle-right');
			$('.slick-prev.slick-arrow').addClass('fa-solid fa-angle-left');
		});

		$(window).on('scroll', function (event) {
			var scroll = $(window).scrollTop();
			if (scroll < 225) { $(".navbar").removeClass("sticky"); }
			else { $(".navbar").addClass("sticky"); }
		});