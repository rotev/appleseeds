class AddShowPagesInMainMenuToSections < ActiveRecord::Migration
  def change
    add_column :sections, :show_pages_in_main_menu, :boolean
  end
end
