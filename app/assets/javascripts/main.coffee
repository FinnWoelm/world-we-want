##############################################################
## ON LOAD ###################################################
## Actions to be executed on page load (first or history) ####
##############################################################
$(document).on 'turbolinks:load', ->

  $(".material-tooltip").remove()
  $('.tooltipped').tooltip({delay: 50})

  $('body').css('overflow', 'auto')
  $("#toggle_mobile_navigation").off("click")
  $("[id=sidenav-overlay]").remove()
  $("div.drag-target").remove()
  $("#toggle_mobile_navigation").sideNav()

  # make sure labels do not overlap text
  Materialize.updateTextFields();

  # Autoresize textfields
  $('.materialize-textarea').trigger('autoresize')


##############################################################
## BEFORE CACHE ##############################################
## Actions to be executed before Turbolinks caches the page ##
##############################################################

$(document).on 'turbolinks:before-cache', ->
  $("#toggle_mobile_navigation").off("click")
  $("[id=sidenav-overlay]").remove()
  $(".material-tooltip").remove()
  $("div.drag-target").remove()
