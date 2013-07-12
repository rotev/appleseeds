class ComponentsList < ActiveRecord::Base

	belongs_to :page
	has_many :components

  attr_accessible :name, :slug, :page_id
end
