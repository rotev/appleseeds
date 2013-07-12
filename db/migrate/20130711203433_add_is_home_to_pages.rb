class AddIsHomeToPages < ActiveRecord::Migration
  def change
    add_column :pages, :is_home, :boolean
  end
end
