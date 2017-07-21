/* global $, CKEDITOR*/
//Document ready.
$(document).on('turbolinks:load', function(){
  
  // // Use bootstrap.file-input.js to bootstrap 'choose file' button
  // $('input[type=file]').bootstrapFileInput();
  
  // // Preview the image chosen for upload
  // $("#imgInp").change(function(){
  //   readURL(this);
  // });

  // initMiniColors();
  
  $('.thumbnail_element').hover(
    function() {
        $(this).find('.thumbnail_hover').animate({
          'padding-top' : '20px',
          'opacity' : '.75'
        },'fast');
    },
    function() {
        $(this).find('.thumbnail_hover').animate({
          'padding-top' : '10px',
          'opacity' : '0'
        },'fast');
    }
  );
  
});

function readURL(input) {
  
  //REQUIREMENTS: Crop image with CropperJS
  
  if (input.files && input.files[0]) {
    var reader = new FileReader();
    reader.onload = function (e) {
      $('#thumbnail-edit').attr('src', e.target.result);
      
      // Cropper Code
      // $('#thumbnail-edit').cropper({
      //   aspectRatio: 16 / 9,
      //   preview: ".img-preview",
      //   minContainerWidth: 640,
      //   minContainerHeight: 360,
      //   modal: false,
      //   crop: function(e) {
      //     // Output the result data for cropping image.
      //     $('#crop_x').val(e.x);
      //     $('#crop_y').val(e.y);
      //     $('#crop_w').val(e.width);
      //     $('#crop_h').val(e.height);
      //     // console.log(e.rotate);
      //     // console.log(e.scaleX);
      //     // console.log(e.scaleY);
      //   }
      // });
      
      
    };
    
    reader.readAsDataURL(input.files[0]);
    
  }
}

function initMiniColors(){
   // Apply minicolors colorpicker to DOM element using bootstrap them
  $('INPUT.minicolors').minicolors({
    theme: 'bootstrap',
    defaultValue: '#000000'
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