class AddSlugToSectionAndPage < ActiveRecord::Migration
  def change
  	add_column :sections, :slug, :string
  	add_column :pages, :slug, :string

  	# update slugs on existing records.
  	Section.all.each do |section|
  		section.save
  	end

  	Page.all.each do |page|
  		page.save
  	end
  end
end
