/* global $, CKEDITOR*/
//Document ready.
$(document).on('turbolinks:load', function(){

  setTimeout(function(){
    $('.flash').animate({
      'opacity' : '0'
    }, 860, function(){
      $('.flash').remove();
    });
  }, 3000);

  // Preview the image chosen for upload
  $("#imgInp").change(function(){
    readURL(this);
  });
  
  // Animations
  $(".input-box").hover(function(eventObj) { 
    alert(eventObj.target.id);  
  });
  
  $('.homepage-thumbnail').hover(
    function() {
      $(this).find('.thumbnail-hover, .tool').animate({
        'opacity' : '1'
      },'fast');
    },
    function() {
      $(this).find('.thumbnail-hover, .tool').animate({
        'opacity' : '0'
      },'fast');
    }
  );
  $('.navbar-link, .tool').hover(
    function() {
      $(this).animate({
        
      }, '50');
    },
    function() {
      $(this).animate({
        
      }, '50');
    }
  );
  
  $(".hide-btn").click(function(){
    $(this).find('.article_hidable_icon').toggleClass("fa-eye");
    $(this).find('.article_hidable_icon').toggleClass("fa-eye-slash");
  });
  
});

function readURL(input) {
  
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function (e) {
      
      $('#thumbnail-image').attr('src', e.target.result);

      };
    reader.readAsDataURL(input.files[0]);
    
  }
}

function initMiniColors(){
   // Apply minicolors colorpicker to DOM element using bootstrap theme
  $('INPUT.minicolors').minicolors({
    theme: 'bootstrap',
    defaultValue: '#ECE9E6'
  });
  
  //initialize background and font color for preivew
  $("#minicolors1").ready(function(){
    var hex = $("#minicolors1").val();
    $("#thumbnail-wrapper").css("background-color", hex);
  });
  
  //update preview on change
  $("#minicolors1").change(function(){
    var hex = $("#minicolors1").val();
    $("#thumbnail-wrapper").css("background-color", hex);
  });
  
  $("#minicolors2").ready(function(){
    var hex = $("#minicolors2").val();
    $(".thumbnail-title-preview").css("color", hex);
  });
  
  $("#minicolors2").change(function(){
    var hex = $("#minicolors2").val();
    $(".thumbnail-title-preview").css("color", hex);
  });
}
