$ ->
  $("form#sign_in_user, form#sign_up_user").bind("ajax:success", (event, xhr, settings) ->
    $(this).parents('.modal').modal('hide')
    window.location.reload();
  ).bind("ajax:error", (event, xhr, settings, exceptions) ->
    error_messages = if xhr.responseJSON['error']
      "<li class='list-group-item list-group-item-danger'>" + xhr.responseJSON['error'] + "</li>"
    else if xhr.responseJSON['errors']
      $.map(xhr.responseJSON["errors"], (v, k) ->
        "<li class='list-group-item list-group-item-danger'>" + k.replace(/[_]/g, '').substr(0, 1).toUpperCase() + k.substr(1).replace(/[_]/g, ' ') + " " + v + "</li>"
      ).join ""
    else
      "<div class='alert alert-danger pull-left'>Unknown error</div>"
    $(this).parents('.app-cross').children('.list-group').html(error_messages)
  )