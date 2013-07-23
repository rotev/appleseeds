class AddPageIdToPages < ActiveRecord::Migration
  def change
  	add_column :pages, :page_id, :integer, default: -1

  	Page.all.each do |page|
  		page.page_id = -1
  		page.save
  	end
  end
end
