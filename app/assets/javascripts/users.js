$(function() {
  userAnimations();
});

function userAnimations(){
  $('#facebook-logo').mouseover(function() {
    $('#facebook-logo').addClass("animated swing");
    return setTimeout("$('#facebook-logo').removeClass('animated swing')", 1000);
  });
  $('#twitter-logo').mouseover(function() {
    $('#twitter-logo').addClass("animated swing");
    return setTimeout("$('#twitter-logo').removeClass('animated swing')", 1000);
  });
  $('#profile-picture').addClass('animated bounceInDown');
  setTimeout("$('#profile-picture').removeClass('bounceInDown')", 1000);
  $("#profile-picture img").mouseover(function() {
    $('#profile-picture img').addClass("animated flip");
    return setTimeout("$('#profile-picture img').removeClass('animated flip')", 1000);
  });
  $("#user-details-wrapper").hide();
  return setTimeout("$('#user-details-wrapper').fadeIn()", 1300);
};