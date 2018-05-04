// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require popper
//= require bootstrap
//= require turbolinks
//= require ckeditor/init
//= require_tree ./ckeditor
//= require_tree .
/* global $ */

$(document).on('turbolinks:load', function(){
  $.each( $('[id^=text-area-comments]'), function (index, textArea){
    var id = (/\d+/).exec(textArea.id);
    textArea.addEventListener("focus", function(e) {
        charCount(id, textArea);
    });
    textArea.addEventListener("blur", function(e) {
        $('#character-count-' + id).html('')
    });
    textArea.addEventListener("keyup", function(e) {
        charCount(id, textArea);
    });
    textArea.addEventListener("keydown", function(e) {
        charCount(id, textArea);
    });
  });
});

function charCount(id, textArea){
    var submitButton = $('#comment-submit-btn-' + id);
    var counterLabel = $('#character-count-' + id);
    counterLabel.html(textArea.value.length + '/255 characters');
    if (textArea.value.length > 255) {
        submitButton.addClass('disabled');
        counterLabel.addClass('badge-warning');
    } else if (textArea.value.length <= 255) {
        submitButton.removeClass('disable');
        counterLabel.removeClass('badge-warning');
    }
}