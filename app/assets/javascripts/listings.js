$(function() {
  masonryProducts();
  listingAnimations();
  imageSlick();
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

  $container.infinitescroll({
    navSelector : '.page',
    nextSelector : '#next-page',
    itemSelector : '.box',
    loading : {
      finshedMsg: 'No more products to load.',
      img: 'http://i.imgur.com/WxlCYpH.gif'
    }
  },
  function (newElements) {
    var $newElems = $(newElements).css({opacity: 0}); 
    var nextPageNav = $(this).find('.page');
    $('.page').replaceWith(nextPageNav);
    $newElems.imagesLoaded(function(){
      $newElems.animate({opacity: 1});
      $container.masonry('appended', $newElems, true);
    });
  }
  );  
};

function imageSlick() {
  $(function(){
    $('#listing-image').slick({
      dots: true,
      speed: 500,
      autoplay: false
    });
  })
};