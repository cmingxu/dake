# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#






$(document).on 'ready', () ->
  $('.balance_reason').on 'change', () ->
    reason_selector_name = $(this).attr('name')
    $(this).closest('tr').find(".detail_reason").load "/admin/reasons/" + $(this).val() + "/detail_reason", () ->
      $(this).find('select').attr('name', reason_selector_name.replace('reason', 'detail_reason'))



  $("#balance_reason").trigger 'change'
