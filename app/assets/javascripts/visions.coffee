$(document).on 'turbolinks:load', ->

  # updates the color scheme
  update_color_scheme = ->
    current_color =
      $.grep(
        $("body").attr('class').split(" "), ( (a) ->
          a.indexOf("primary-") == 0 and a.indexOf("primary-darken-") == -1
        )
      )[0].replace("primary-",'')

    new_color = $("form#new_vision select").val().replace('_', '-')
    $("body").removeClass("primary-" + current_color).addClass("primary-" + new_color)

  if $("form#new_vision").length

    update_color_scheme()

    $("select").change ->
      update_color_scheme()
