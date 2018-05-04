/* global $ */

$(document).on('turbolinks:load', function(){
  $(".alert").animate({
    'margin-top': '3px',
  }, 300, function() {
  });
});