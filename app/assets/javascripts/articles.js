/* global $ */
//Document ready.
$(document).on('turbolinks:load', function(){
  
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
  
  $("#minicolors").change(function(){
    var hex = $("#minicolors").val();
    $("#thumbnail-wrapper").css("background-color", hex);
  });
});

function readURL(input) {
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    
    reader.onload = function (e) {
      $('#thumbnail-edit').attr('src', e.target.result);
       $('#thumbnail-edit').cropper({
      aspectRatio: 16 / 9,
      zoomable: false,
      preview: ".img-preview",
      crop: function(e) {
        // Output the result data for cropping image.
        $('#crop_x').val(e.x);
        $('#crop_y').val(e.y);
        $('#crop_w').val(e.width);
        $('#crop_h').val(e.height);
        // console.log(e.rotate);
        // console.log(e.scaleX);
        // console.log(e.scaleY);
      }
     });
    };

    reader.readAsDataURL(input.files[0]);
    
  }
}