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
        festive = $('#festive').val()
        window.location.href = "?name=#{name}&festive=#{festive}"
      else
        alert "Please provide a name"
    )

$(Custom.init)
