class AddPageTemplateIdToPages < ActiveRecord::Migration
  def change
    add_column :pages, :page_template_id, :integer
  end
end
