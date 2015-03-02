# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#listings-container').imagesLoaded ->
    $('#listings-container').masonry
      itemSelector: '.box'
      isFitWidth: true
      gutterWidth: 10
  
  setTimeout("$('.alert').fadeOut('slow')", 2500)

  $('#nav-menu').on 'click', ->
    $('#nav-drop-menu').show 'slow'

  $('.nav-drop-menu-close').click ->
    $('#nav-drop-menu').hide 'slow'
    return false

  $('.nav-logo').mouseenter ->
    $('.nav-logo').addClass("animated bounce")
