$(document).on('turbolinks:load', function() {
  if (window.location.hash !== "") {
    return setTimeout(function() {
      var error;
      try {
        return $('html, body').animate({
          scrollTop: $(window.location.hash).offset().top + 'px'
        }, 1);
      } catch (error1) {
        error = error1;
        return "Anchor not found. " + error;
      }
    }, 1);
  }
});
