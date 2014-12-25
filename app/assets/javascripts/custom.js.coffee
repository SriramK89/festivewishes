# Using Javascipts for the application
window.Custom = do ->

  # Starts the required javascripts
  init: ->
    $('#customize').on('click', (event) ->
      $('#customize_form').toggle()
    )
    $('#submit_customize').on('click', (event) ->
      name = $('#wisher_name').val()
      if name.length > 0
        name = name.split(' ').join('_')
        window.location.href = "?name=#{name}"
      else
        alert "Please provide a name"
    )

$(Custom.init)
