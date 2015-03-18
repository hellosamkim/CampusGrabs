$ ->

  typesentence = ->
    $('#sentences').typed
      strings: [
        'I want to buy a bike'
        'I want to buy a long board'
        'I want to buy a laptop'
        'I want to buy a textbook'
        'I want to buy homecoming tickets'
        'I want to buy a desk'
        'I want to sell my car'
        'I want to sell my mini fridge'
        'I want to sell my TV'
        'I want to sell my dj equipment'
      ]
      typeSpeed: 110
      backDelay: 3000
      loop: true;
      loopCount: false;
      backSpeed: 30;
      contentType: 'html'
      loopCount: false;
      callback: ->
        foo()
        return
      resetCallback: ->
        newTyped()
        return
  setTimeout(typesentence, 2000)

  # Sentences
  $('.welcome-sentences').hide()
  setTimeout("$('.welcome-sentences').fadeIn(200)", 300)

  # Logo bounce in effect
  $('#logo').addClass('animated bounceInDown')
  

  # Login and Register
  $("#welcome-user-auth").hide()
  setTimeout("$('#welcome-user-auth').fadeIn(4500)", 500)  
