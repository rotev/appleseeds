class AddSubtitleToPages < ActiveRecord::Migration
  def change
  	add_column :pages, :subtitle, :string, default: ""
  end
end
