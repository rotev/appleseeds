//= require active_admin/base


sendSortRequestOfModel = (model_name) ->
  formData = $('#index_table_' + model_name + ' tbody').sortable('serialize')
  formData += "&" + $('meta[name=csrf-param]').attr("content") + "=" + encodeURIComponent($('meta[name=csrf-token]').attr("content"))
  $.ajax
    type: 'post'
    data: formData
    dataType: 'script'
    url: '/admin/' + model_name + '/sort'

initSortableForModel = (model_name) ->
  if $('body.admin_' + model_name + '.index').length
    $('#index_table_' + model_name + ' tbody').disableSelection()
    $('#index_table_' + model_name + ' tbody').sortable
      axis: 'y'
      cursor: 'move'
      update: (event, ui) ->
        sendSortRequestOfModel(model_name)

jQuery ($) ->

  for model_name in ["sections", "pages", "components_lists", "components"]
    initSortableForModel(model_name)
