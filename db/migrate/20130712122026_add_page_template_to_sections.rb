class AddPageTemplateToSections < ActiveRecord::Migration
  def change
  	add_column :sections, :page_template_id, :integer
  end
end
