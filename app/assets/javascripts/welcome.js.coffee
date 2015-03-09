$ ->
  # Sentences
  $('.welcome-sentences').hide()
  setTimeout("$('.welcome-sentences').fadeIn(200)", 300)

  typesentence = ->
    $('#sentences').typed
      strings: [
        'I Want to Buy a Bike'
        'I Want to Buy a Long Board'
        'I Want to Buy a Laptop'
        'I Want to Buy a Textbook'
        'I Want to Buy Homecoming Tickets'
        'I Want to Buy a Desk'
        'I Want to Sell my Car'
        'I Want to Sell my Mini Fridge'
        'I Want to Sell my TV'
        'I Want to Sell my DJ Equipment'
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

  # Logo bounce in effect
  $('.logo').addClass('animated bounceInDown')
  

  # Login and Register
  $(".welcome-user-auth").hide()
  setTimeout("$('.welcome-user-auth').fadeIn(4500)", 500)  
  
  # Get started button effect
  $('.welcome-get-started').hide()
  setTimeout("$('.welcome-get-started').slideToggle('slow')", 1500)
  setTimeout("$('.welcome-get-started').addClass('animated infinite pulse')", 2500)