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
    $('#nav-drop-menu').show 'slow'

  # Hide menu from Top Nav Menu upon click
  $('.nav-drop-menu-close').click ->
    $('#nav-drop-menu').hide 'slow'
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
  $('#get-started').hide()
  setTimeout("$('#get-started').slideToggle('slow')", 2000)
  setTimeout("$('#get-started').addClass('animated infinite pulse')", 4000)

  $('#nav-menu').mouseenter ->
    $('.username-bounce').addClass("animated bounce")
    setTimeout("$('.username-bounce').removeClass('animated bounce')", 1000)

  $('.profile-picture').addClass('animated bounceInDown')

  # Listings show after .5s
  $('.box').hide()
  setTimeout("$('.box').show()", 200)