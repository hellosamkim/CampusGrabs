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