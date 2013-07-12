class AddShowInMainMenuToSection < ActiveRecord::Migration
  def change
    add_column :sections, :show_in_main_menu, :boolean, default: true
  end
end
