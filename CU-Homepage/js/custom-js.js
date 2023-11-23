/* FAMILY SLIDER */

$('.family-slider').slick({
    centerMode: true,
    centerPadding: '9%',
    slidesToShow: 3,
    responsive: [
    {
    breakpoint: 768,
    settings: {
      arrows: false,
      centerMode: true,
      centerPadding: '40px',
      slidesToShow: 4
    }
    },
    {
    breakpoint: 480,
    settings: {
      arrows: false,
      centerMode: true,
      centerPadding: '40px',
      slidesToShow: 1
    }
    }
    ]
    });

    $('.hero-slider').slick({
      dots: false,
      infinite: true,
      speed: 300,
      slidesToShow: 1,
      adaptiveHeight: true
    });
    

    (function() {
      var $gallery = new SimpleLightbox('.gallery a', {});
  })(); 