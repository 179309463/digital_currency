$(document).on 'turbolinks:load', ->
  if window.location.hash != ""
    setTimeout ->
      # smooth scroll to the anchor id
      try
        $('html, body').animate
          scrollTop: $(window.location.hash).offset().top + 'px'
        ,1
      catch error
        "Anchor not found. #{error}"
    ,1
