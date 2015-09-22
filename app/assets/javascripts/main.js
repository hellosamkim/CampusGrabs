$(function () {
  animate_css_animations();
  typesentence_search();
  $(document.body).css({'opacity':0}).animate({'opacity':1})
  setTimeout('typesentence()', 1000);
  fixed_nav();
  masonryProducts();
  animationsAndEffects();
});

typesentence = function () {
  return $('#sentences').typed({
    strings: ['I want to buy a long board', 'I want to buy a laptop', 'I want to buy a textbook', 'I want to sell my homecoming tickets', 'Enter keyword here...'],
    typeSpeed: 110,
    backDelay: 3000,
    backSpeed: 30,
    contentType: 'html',
    resetCallback: function() {
      newTyped();
    }
  });
};

function hidden_for_animate (e) {
  $(e).css({'visibility': 'hidden'});
};

function animate_css_animations () {
  hidden_for_animate('.logo');
  hidden_for_animate('.login form');
  setTimeout("$('.logo').addClass('animated bounceInDown')", 500);
  setTimeout("$('.logo').removeClass('bounceInDown')", 1600);
  setTimeout("$('.get-started').addClass('animated pulse infinite')", 1500);
  $('.login h3').hover(function () {
    $('.login form').addClass('animated slideInUp');
  });
  addRemoveAnimate('.logo', 'tada');

  function addRemoveAnimate(e, animation) {
    $(e).mouseenter(function (){
      $(e).addClass("animated " + animation);
      setTimeout(function () {
        $(e).removeClass(animation);
      }, 1600);
    });
  };
};

function typesentence_search () {
  $('#search-sentences').fadeOut();
  $('#welcome-sentences')
    .on('click', function (){
      $('#search-sentences').fadeIn();
      $('#search-sentences input').focus();
      $('#welcome-sentences > #sentences').fadeOut();
    })
};

function fixed_nav () {
  var e = $('.main-nav .container');
  var clss = "search-bar-scrolled";
  var sensitivity = 5;
  var previousScroll = 0;
  $(window).scroll(function () {
    if ($(this).scrollTop() > 0) {
      e.addClass(clss);
      $(".main-nav .container input").css({'border-top': '1px solid #d4d4d4'});
      $(".main-nav .container .select-group").css({'border-top': '1px solid #d4d4d4'});
      $(".main-nav .container input[type='submit']").css({'height': '46px'});
      $(".search-bar").css({'margin-left':'250px'});
    } else {
      e.removeClass(clss);
      $(".search-bar").css({'margin-left':'0px'});
    }
  });
  $(window).scroll(function(e) {
    var scroller = $(this).scrollTop();
    if (scroller - sensitivity > previousScroll) {
      $('#fix-nav').slideUp();
      $('.main-nav .container #search-query').slideUp();
    } else if (scroller + sensitivity < previousScroll) {
      $('#fix-nav').slideDown();
      $('.main-nav .container #search-query').slideDown();
    }
    previousScroll = scroller;
  });
};

function border_pick (e, side, b) {
  var cide = 'border-bottom';
  if (b === 'yes') {
    $('#{e}').css({cide: '1px solid #d4d4d4'});
  }
}
 
// Action for mouseclick outside of search-sentence
$(document).mouseup(function (e)
{
  if (!$("#search-sentences").is(e.target) && $("#search-sentences").has(e.target).length === 0) {
    $("#search-sentences").fadeOut();
    $("#welcome-sentences > #sentences").fadeIn();
  }
});

function masonryProducts() {
  var $container = $('#listing-wrapper')
  $container.imagesLoaded(function() {
    $container.masonry({
      itemSelector: '.listing', 
      isFitWidth: true,
      gutterWidth: 10
    });
  });

  $container.infinitescroll({
    navSelector : '.page',
    nextSelector : '#next-page',
    itemSelector : '.listing',
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
  });  
};

function animationsAndEffects() {
};