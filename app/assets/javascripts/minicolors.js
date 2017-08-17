/* global $ */

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
