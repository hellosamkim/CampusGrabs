# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  # Social icons
  $('#facebook-logo').mouseover -> 
    $('#facebook-logo').addClass("animated swing")
    setTimeout("$('#facebook-logo').removeClass('animated swing')", 1000)

  $('#twitter-logo').mouseover -> 
    $('#twitter-logo').addClass("animated swing")
    setTimeout("$('#twitter-logo').removeClass('animated swing')", 1000)

  # Profile picture
  $('#profile-picture').addClass('animated bounceInDown')
  setTimeout("$('#profile-picture').removeClass('bounceInDown')", 1000)
  
  $("#profile-picture img").mouseover -> 
    $('#profile-picture img').addClass("animated flip")
    setTimeout("$('#profile-picture img').removeClass('animated flip')", 1000)

  $("#user-details-wrapper").hide()
  setTimeout("$('#user-details-wrapper').fadeIn()", 1300)