class CreateAddSectionToPages < ActiveRecord::Migration
  def change
    create_table :add_section_to_pages do |t|
      t.integer :section_id

      t.timestamps
    end
  end
end
