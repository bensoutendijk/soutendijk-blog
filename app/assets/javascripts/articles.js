/* global $ */
//Document ready.
$(document).on('turbolinks:load', function(){
  var form = document.getElementById("thumbnail-form");
  var div = document.createElement("div");
  var average_color = document.getElementById("color");
  div.style.width = "500px";
  div.style.height = "500px";
  div.style.background = "blue";
  div.innerHTML = "Hello World";
  form.appendChild(div);
  
  form.onmouseover = function() {
    this.style.backgroundColor = average_color;
  };
});


