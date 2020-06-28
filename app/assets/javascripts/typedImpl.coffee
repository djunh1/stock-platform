ready = ->
  Typed.new '.element',
    strings: [
      "The Wolf of State Street"
    ]
    typeSpeed: 35
    showCursor: false
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready
