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

  # Display menu from Top Nav menu upon click
  $('#nav-menu').on 'click', ->
    $('#nav-drop-menu').fadeIn 'slow'

  # Hide menu from Top Nav Menu upon click
  $('.nav-drop-menu-close').click ->
    $('#nav-drop-menu').fadeOut 'slow'
    return false

  # Displays simple listing details upon hover
  $('.nav-logo').mouseenter ->
    $('.nav-logo').addClass("animated tada")
    setTimeout("$('.nav-logo').removeClass('animated tada')", 1000)
  

  $('.logo').mouseenter ->
    $('.logo').addClass("animated tada")
    setTimeout("$('.logo').removeClass('animated tada')", 1000)

  # Image carousal for each listings
  $('.listing-image').slick
    dots: true
    speed: 500
    autoplay: false

  # Auto hide alerts after 3s
  setTimeout("$('.alert').fadeOut('slow')", 3000)

  # Logo bounce in effect
  $('.logo').addClass('animated bounceInDown')
  setTimeout("$('.logo').removeClass('animated bounceInDown')", 3000)

  # Get started button effect
  $('.welcome-get-started').hide()
  setTimeout("$('.welcome-get-started').slideToggle('slow')", 1500)
  setTimeout("$('.welcome-get-started').addClass('animated infinite pulse')", 2500)

  # Load site with delay
  $('.box').hide()
  setTimeout("$('.box').fadeIn()", 200)

  $('.login-button').mouseenter ->
    $('.login-button').addClass("animated bounce")
    setTimeout("$('.login-button').removeClass('animated bounce')", 1)

  $('.register-button').mouseenter ->
    $('.register-button').addClass("animated bounce")
    setTimeout("$('.register-button').removeClass('animated bounce')", 1)
