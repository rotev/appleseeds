class AddTypeToSection < ActiveRecord::Migration
  def change
  	add_column :sections, :section_type, :string, default: 'redirect'

  	Section.all.each do |section|
  		section.section_type = "redirect"
  		section.save
  	end
  end
end
