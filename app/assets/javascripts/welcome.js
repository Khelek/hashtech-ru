$(document).ready(function () {
  $slideshow = $('#projects-slideshow');
  $slideshow.rsfSlideshow({
    interval: 4,
    transition: 500,
    effect: 'slideLeft',
    slide_data_selectors: {
      caption: {selector: 'div.caption', attr: false}
    } });
  $("#rs-prev").bind('click.rsfSlideshow', function(e) {
    e.preventDefault();
    $slideshow.data('rsf_slideshow').settings.effect = 'slideRight';
    $slideshow.rsfSlideshow('previousSlide');
  });
  $("#rs-next").bind('click.rsfSlideshow', function(e) {
    e.preventDefault();
    $slideshow.data('rsf_slideshow').settings.effect = 'slideLeft';
    $slideshow.rsfSlideshow('nextSlide');
  });
});
