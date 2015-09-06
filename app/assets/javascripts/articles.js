$(document).on("ajax:before", ".pagination a", function() {
    $(".older").html('<i class="fa fa-spinner fa-spin"></i> &nbsp;PLEASE WAIT...')
});