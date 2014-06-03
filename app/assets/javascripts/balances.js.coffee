# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
#






$(document).on 'ready', () ->
  balance_reason_change = () ->
    reason_selector_name = $(this).attr('name')
    $(this).closest('tr').find(".detail_reason").load "/admin/reasons/" + $(this).val() + "/detail_reason", () ->
      $(this).find('select').attr('name', reason_selector_name.replace('reason', 'detail_reason'))
  $('.balance_reason').on 'change', balance_reason_change
  $("#balance_reason").trigger 'change'



  $('#add_balance_detail').on 'click', ()->
    event.stopPropagation() 
    tr = $("tr.bd:last").clone()
    tr.find("input").val("")
    tr.find(".balance_reason").val(tr.find('option:first').text())

    tr.find('.balance_reason').on 'change', balance_reason_change
    tr.find(".balance_reason").trigger 'change'
    tr.find(".remove_balance_detail_link").on 'click', () ->
      event.stopPropagation()
      remove_balance_detail($(this).closest('tr'))

    tr.find("input,select").each (index, input)->
      next_index = (matcher) ->
        parseInt(matcher) + 1
      $(input).attr('name', $(input).attr('name').replace(/(\d+)/, next_index))

    tr.data('bd_id', 0)
    tr.data('balance_id', 0)

    $("tbody").append(tr)

    return false

  remove_balance_detail = (tr) ->
    event.stopPropagation()
    if($("tr.bd").size() == 1)
      alert("最后一项， 不能删除")
      return
    
    if(!confirm("我确定要删除这一项！"))
      return 
    
    tr = $(tr)
    if(tr.data('bd_id') > 0)
      balance_id = tr.data('balance_id')
      params=
        url: '/admin/balances/' + balance_id + '/balance_details/' +  tr.data('bd_id'),
        type: 'POST',
        data: '_method=DELETE'
        success: () ->
          tr.remove()
      $.ajax params

    else
      tr.remove()


  $(".remove_balance_detail_link").on 'click', () ->
    event.stopPropagation()
    remove_balance_detail($(this).closest('tr'))




