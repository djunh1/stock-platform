ready = ->
  Typed.new '.element',
    strings: [
      "Web Applications Done Right."
    ]
    typeSpeed: 10
    showCursor: false
  return

$(document).ready ready
$(document).on 'turbolinks:load', ready
