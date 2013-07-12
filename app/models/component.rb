class Component < ActiveRecord::Base

	belongs_to :components_list

	has_attached_file :image

  attr_accessible :components_list_id, :description, :page_id, :short_description, :subtitle, :title
end
