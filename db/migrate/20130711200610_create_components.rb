class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :title
      t.string :subtitle
      t.text :short_description
      t.text :description
      t.references :page
      t.references :components_list

      t.timestamps
    end
  end
end
