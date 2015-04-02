$(function() {
  $('.welcome-sentences').hide();
  $("#welcome-user-auth").hide();
  setTimeout("$('.welcome-sentences').fadeIn(200)", 300);
  setTimeout(typesentence, 2000);
  $('#logo').addClass('animated bounceInDown');
  setTimeout("$('#welcome-user-auth').fadeIn(4500)", 500);
});

typesentence = function() {
  return $('#sentences').typed({
    strings: ['I want to buy a bike', 'I want to buy a long board', 'I want to buy a laptop', 'I want to buy a textbook', 'I want to buy homecoming tickets', 'I want to buy a desk', 'I want to sell my car', 'I want to sell my mini fridge', 'I want to sell my TV', 'I want to sell my dj equipment'],
    typeSpeed: 110,
    backDelay: 3000,
    loop: true,
    loopCount: false,
    backSpeed: 30,
    contentType: 'html',
    loopCount: false,
    callback: function() {
      foo();
    },
    resetCallback: function() {
      newTyped();
    }
  });
};
