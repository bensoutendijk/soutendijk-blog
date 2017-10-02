/* global $ */

// Flash Messages

$(document).on('turbolinks:load', function(){
  
  
  $('#flash-container').animate({
    'top': '62px'
  }, 134);
    
  setTimeout(function(){
    
    $('#flash-container').animate({
      'top': '-3px'
    }, 134);
    
  }, 6000);
  
});