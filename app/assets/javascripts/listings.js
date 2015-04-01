$(function() {
  $('#listings-container').imagesLoaded(function() {
    return $('#listings-container').masonry({
      itemSelector: '.box',
      isFitWidth: true,
      gutterWidth: 10
    });
  });
  $('#login-button').mouseenter(function() {
    $('#login-button').addClass("animated pulse");
    return setTimeout("$('#login-button').removeClass('animated pulse')", 1000);
  });
  $('#register-button').mouseenter(function() {
    $('#register-button').addClass("animated pulse");
    return setTimeout("$('#register-button').removeClass('animated pulse')", 1000);
  });
  $('#nav-logo').mouseenter(function() {
    $('#nav-logo').addClass("animated tada");
    return setTimeout("$('#nav-logo').removeClass('animated tada')", 1000);
  });
  $('#listing-image').slick({
    dots: true,
    speed: 500,
    autoplay: false
  });
  return setTimeout("$('.alert').fadeOut('slow')", 3000);
});