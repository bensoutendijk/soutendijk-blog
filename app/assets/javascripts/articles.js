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
      
      $('#thumbnail-image').attr('src', e.target.result);

      // Crop fields
      $('#crop_x').val('0');
      $('#crop_y').val('0');
      $('#crop_w').val('0');
      $('#crop_h').val('0');
    
      };
    reader.readAsDataURL(input.files[0]);
    
  }
}

