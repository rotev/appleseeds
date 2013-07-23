module PagesHelper

  def page_template_id_form_column (record, options)
    options[:selected] = record.page_template_id
    select :record, :page_template_id, options_for_select(get_page_templates_array, options)
  end

  def parent_page_id_form_column(record, options)
    value = params[:page_id] || -1
    hidden_field :record, :parent_page_id, {value: value}
  end

  def section_id_form_column(record, options)
    value = params[:section_id] || -1
    hidden_field :record, :section_id, {value: value}
  end

  private

  def get_page_templates_array
    array = []
    PageTemplate.order('name ASC').each do |template|
      array << [template.name, template.id]
    end
    array
  end
end