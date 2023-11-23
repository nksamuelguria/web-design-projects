var $carousel = $('.slider');

var settings = {
  arrows: true,
  slide: '.slick-slideshow__slide',
  slidesToShow: 1,
  centerMode: true,
  centerPadding: '0',
  dots: true,
  autoplay:true,
  autoplaySpeed:3000,
  speed:2000
};

function setSlideVisibility() {
//Find the visible slides i.e. where aria-hidden="false"
var visibleSlides = $carousel.find('.slick-slideshow__slide[aria-hidden="false"]');
//Make sure all of the visible slides have an opacity of 1
$(visibleSlides).each(function() {
$(this).css('opacity', 1);
});

//Set the opacity of the first and last partial slides.
$(visibleSlides).first().prev().css('opacity', 0);
}

$carousel.slick(settings);
$carousel.slick('slickGoTo', 1);
setSlideVisibility();

$carousel.on('afterChange', function() {
setSlideVisibility();
});

setInterval(function(){
var number = $('.slick-dots li').length;
var counter = null;
for(var i = 0; i< number;i++){
if($('.slick-dots li').eq(i).hasClass('slick-active')){
counter = i+1;
}
}
$('.counter').text(counter);
$('.number').text(number);
},100);





var width = $("body").width();
if (width > 1199) {
  // Scrollify
  $.scrollify({
    section : ".hv-100",
    sectionName : "section-name",
    //interstitialSection : "",
   // easing: "easeOutExpo",
    scrollSpeed: 500,
    offset : 0,
    scrollbars: false,
    standardScrollElements: "true",
    setHeights: false,
    overflowScroll: true,
    updateHash: false,
    touchScroll:true,
    before:function() {},
    after:function() {},
    afterResize:function() {},
    afterRender:function() {}
  });
}
 $(window).scroll(function () {
    if ($("header").offset().top > 1) {
        $("header").addClass("header-shrink");
       // $("header").hide();
    } else {
       $("header").removeClass("header-shrink");
       //$("header").show();
    }
});