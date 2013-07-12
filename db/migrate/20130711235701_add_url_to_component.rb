class AddUrlToComponent < ActiveRecord::Migration
  def change
  	add_column :components, :url, :string, default: nil
  end
end
