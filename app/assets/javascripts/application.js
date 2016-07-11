// DO NOT REQUIRE jQuery or jQuery-ujs in this file!
// DO NOT REQUIRE TREE!

// CRITICAL that vendor-bundle must be BEFORE bootstrap-sprockets and turbolinks
// since it is exposing jQuery and jQuery-ujs

//= require vendor-bundle
//= require app-bundle

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
// require jquery
// require jquery_ujs
//= require turbolinks
//= require bootstrap.min
// require_tree .


jQuery(document).ready(function($){
  /*$('.blocks-area').on('change', function(){
    var holder = document.getElementById('holder'),
        state = document.getElementById('status');

    if (typeof window.FileReader === 'undefined') {
      state.className = 'fail';
    } else {
      state.className = 'success';
      state.innerHTML = 'File API & FileReader available';
    }

    holder.ondragover = function () { this.className = 'hover'; return false; };
    holder.ondragend = function () { this.className = ''; return false; };
    holder.ondrop = function (e) {
      this.className = '';
      e.preventDefault();

      var file = e.dataTransfer.files[0],
          reader = new FileReader();
      reader.onload = function (event) {
        console.log(event.target);
        holder.style.background = 'url(' + event.target.result + ') no-repeat center';
      };
      console.log(file);
      reader.readAsDataURL(file);

      return false;
    }
  });*/

});
