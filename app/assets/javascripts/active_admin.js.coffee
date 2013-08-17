//= require active_admin/base


sendSortRequestOfModel = (model_name) ->
  formData = $('#index_table_' + model_name + ' tbody').sortable('serialize')
  formData += "&" + $('meta[name=csrf-param]').attr("content") + "=" + encodeURIComponent($('meta[name=csrf-token]').attr("content"))
  $.ajax
    type: 'post'
    data: formData
    dataType: 'script'
    url: '/admin/' + model_name + '/sort'

jQuery ($) ->
  # sortable sections
  if $('body.admin_sections.index').length
    $("#index_table_sections tbody").disableSelection()
    $("#index_table_sections tbody").sortable
      axis: 'y'
      cursor: 'move'
      update: (event, ui) ->
        sendSortRequestOfModel("sections")

  # sortable pages
  if $('body.admin_pages.index').length
    $("#index_table_pages tbody").disableSelection()
    $("#index_table_pages tbody").sortable
      axis: 'y'
      cursor: 'move'
      update: (event, ui) ->
        sendSortRequestOfModel("pages")

