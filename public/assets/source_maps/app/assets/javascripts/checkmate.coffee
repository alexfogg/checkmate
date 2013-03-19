class Home
  @document_ready: ->
    $('#login_form').on('click', 'a[data-clear-form]', Home.clear_form)

  @clear_form: (e) ->
    e.preventDefault()
    $('#login_form').empty()

$(document).ready(Home.document_ready)
