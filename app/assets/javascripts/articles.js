$(document).on("ajax:before", ".pagination a", function() {
    $(".older").html('<i class="fa fa-spinner fa-spin"></i> &nbsp;PLEASE WAIT...')
});
$(document).ready(function(){
    $(".twitter, .facebook, .google").click(function(e) {
        e.preventDefault();
        var href = $(this).find("a").attr('href');
        window.open(href, "sharer", "height=400,width=550,resizable=1");
    });
})