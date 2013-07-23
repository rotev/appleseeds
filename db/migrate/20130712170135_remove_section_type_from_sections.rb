class RemoveSectionTypeFromSections < ActiveRecord::Migration
  def up
  	remove_column :sections, :section_type
  end

  def down
  	add_column :sections, :section_type, :string, default: 'redirect'
  end
end
