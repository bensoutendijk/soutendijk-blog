/* global $, CKEDITOR*/
//Document ready.
$(document).on('turbolinks:load', function(){
  
  // Preview the image chosen for upload
  $("#imgInp").change(function(){
    readURL(this);
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
