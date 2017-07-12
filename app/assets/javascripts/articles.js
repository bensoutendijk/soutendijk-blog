/* global $ */
//Document ready.
$(document).on('turbolinks:load', function(){
  var form = document.getElementById("thumbnail-form");
  var div = document.createElement("div");
  
  // Use bootstrap.file-input.js to bootstrap 'choose file' button
  $('input[type=file]').bootstrapFileInput();
  
  // Apply minicolors colorpicker to DOM element using bootstrap them
  $('INPUT.minicolors').minicolors({
    theme: 'bootstrap',
    defaultValue: '#000000'
  });
  
  $("#imgInp").change(function(){
    readURL(this);
  });
  
});


function readURL(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    
    reader.onload = function (e) {
      $('#thumbnail-preview').attr('src', e.target.result);
    };

    reader.readAsDataURL(input.files[0]);
  }
}