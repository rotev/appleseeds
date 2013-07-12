class AddSlugToPageTemplates < ActiveRecord::Migration
  def change
    add_column :page_templates, :slug, :string
  end
end
