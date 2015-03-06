$ ->
  # Sentences
  typesentence = ->
    $('#sentences').typed
      strings: [
        'I Want to Buy a Bicycle'
        'I Want to Buy a Long Board'
        'I Want to Buy a Laptop'
        'I Want to Buy a Textbook'
        'I Want to Buy Homecoming Tickets'
        'I Want to Buy a Dog'
        'I Want to Sell my Car'
        'I Want to Sell my Gym Equipment'
        'I Want to Sell my TV'
        'I Want to Sell my DJ Equipment'
      ]
      typeSpeed: 110
      backDelay: 3000
      loop: false;
      backSpeed: 30;
      contentType: 'html'
      loopCount: false;
      callback: ->
        foo()
        return
      resetCallback: ->
        newTyped()
        return
  setTimeout(typesentence, 1000)

  # Logo bounce in effect
  showlogo = ->
    $('.logo').addClass('animated bounceInDown')
    setTimeout("$('.logo').removeClass('animated bounceInDown')", 3000)
  setTimeout(showlogo, 100)