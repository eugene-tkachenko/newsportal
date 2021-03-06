// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require ckeditor/init
//= require turbolinks
//= require_tree .

$(document).ready(function() {
    setTimeout(function() {
        $("#notice_wrapper, #error_wrapper").fadeOut("slow", function() {
            $(this).remove();
        })
    }, 2500 );
});

//When we click on Logo -> Navigating on root path -> reload page to reload masonry elements
$(document).ready(function(){
    $(".navbar-brand").on("click", function(){
        window.location.href = '/';
    })
})

$(document).on('ready page:load page:change', function() {
    $(".previous_page").remove();
    $(".next_page").html('<a class="btn btn-info btn-lg older"> <i class="fa fa-angle-left"></i> &nbsp;SEE OLD NEWS </a>');

});