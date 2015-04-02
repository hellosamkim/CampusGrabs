$(function() {
  masonryProducts();
  listingAnimations();
  return setTimeout("$('.alert').fadeOut('slow')", 3000);
});

function listingAnimations() {
  addRemoveAnimate('#login-button', 'animated pulse');
  addRemoveAnimate('#register-button', 'animated pulse');
  addRemoveAnimate('#nav-logo', 'animated tada');
};

function addRemoveAnimate(e, animation) {
  $(e).mouseenter(function() {
    $(e).addClass(animation);
    return setTimeout("$(e).removeClass(animation)", 1000);
  });
}

function masonryProducts() {
  var $container = $('#listings-container')
  $container.imagesLoaded(function() {
    $container.masonry({
      itemSelector: '.box',
      isFitWidth: true,
      gutterWidth: 10
    });
  });

  $()
};