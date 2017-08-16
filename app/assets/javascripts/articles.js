/* global $, CKEDITOR*/
//Document ready.
$(document).on('turbolinks:load', function(){
  
  // Use bootstrap.file-input.js to bootstrap 'choose file' button
  $('input[type=file]').bootstrapFileInput();
  
  // Preview the image chosen for upload
  $("#imgInp").change(function(){
    readURL(this);
  });
  
  $("#minicolors-input").change(function (){
    
  });
  
  initMiniColors();
  
});

function readURL(input) {
  
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function (e) {
      
      $('#thumbnail-edit').attr('src', e.target.result);

      // Crop fields
      $('#crop_x').val('0');
      $('#crop_y').val('0');
      $('#crop_w').val('0');
      $('#crop_h').val('0');
    
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
  
  //initialize background color for preivew
  $("#minicolors").ready(function(){
    var hex = $("#minicolors").val();


    $("#thumbnail-wrapper").css("background-color", hex);
  });
  
  //update preview on change
  $("#minicolors").change(function(){
    var hex = $("#minicolors").val();

    $("#thumbnail-wrapper").css("background-color", hex);
  });
}

$.fn.extend({
    animateCss: function (animationName) {
        var animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
        this.addClass('animated ' + animationName).one(animationEnd, function() {
            $(this).removeClass('animated ' + animationName);
        });
        return this;
    }
});