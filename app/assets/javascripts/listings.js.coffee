# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  # Masonry for pinterest-like fluid columns
  $('#listings-container').imagesLoaded ->
    $('#listings-container').masonry
      itemSelector: '.box'
      isFitWidth: true
      gutterWidth: 10

  # Login / Register buttons on Nav1
  $('.login-button').mouseenter ->
    $('.login-button').addClass("animated pulse")
    setTimeout("$('.login-button').removeClass('animated pulse')", 1000)

  $('.register-button').mouseenter -> 
    $('.register-button').addClass("animated pulse")
    setTimeout("$('.register-button').removeClass('animated pulse')", 1000)    
    
  # Displays simple listing details upon hover
  $('.nav-logo').mouseenter ->
    $('.nav-logo').addClass("animated tada")
    setTimeout("$('.nav-logo').removeClass('animated tada')", 1000)


  # Image carousal for each listings
  $('.listing-image').slick
    dots: true
    speed: 500
    autoplay: false

  # Auto hide alerts after 3s
  setTimeout("$('.alert').fadeOut('slow')", 3000)

  # Get started button effect
  $('.welcome-get-started').hide()
  setTimeout("$('.welcome-get-started').slideToggle('slow')", 1500)
  setTimeout("$('.welcome-get-started').addClass('animated infinite pulse')", 2500)

  # Load site with delay
  $('.box').hide()
  setTimeout("$('.box').fadeIn()", 200)
