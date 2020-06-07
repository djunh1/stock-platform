ready = ->
  Typed.new '.element',
    strings: [
      "Stocks, Stocks, Stocks"
    ]
    typeSpeed: 35
    showCursor: false
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready
