class CreateComponentsLists < ActiveRecord::Migration
  def change
    create_table :components_lists do |t|
      t.string :name
      t.string :slug
      t.references :page

      t.timestamps
    end
  end
end
