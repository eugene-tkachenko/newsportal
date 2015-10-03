$(document).ready(function() {
    $('#create_new_employee')
        .bind("ajax:success", function (evt, data, status, xhr) {
            $('.modal').modal('hide');
            $('#create_new_employee')[0].reset();
            $('#create_employee .list-group').html("")
        }).bind("ajax:error", function (event, xhr, settings, exceptions) {
            var errors = JSON.parse(xhr.responseText);
            var fieldLabel;
            var validationMessage;
            $.each(errors, function (key, data) {
                fieldLabel = $('label[for=employee_' + key + ']').justtext()
                $.each(data, function (index, data) {
                    validationMessage = data.substr(0,1).toUpperCase() +data.substr(1)
                    $('#create_employee .list-group').append("<li class='list-group-item list-group-item-danger'>" + fieldLabel + ":  " + validationMessage + "</li>")
                })
            })
        })
});