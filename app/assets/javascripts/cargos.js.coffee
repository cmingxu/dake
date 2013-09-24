# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#



$(document).ready () ->
  $("#cargo_huoyun_route_id").change () ->
    target = $(this).find('option:selected').val()
    window.location.href="/admin/cargo_outs/new?to=" + target

  $("#check_all").click () ->
    $(".check").each () ->
      $(this).prop('checked', 'checked')
  
  $("#uncheck_all").click () ->
    $(".check").each () ->
      $(this).prop('checked', false)

