class Page < ActiveRecord::Base

	belongs_to :section
	belongs_to :page_template

	has_many :components_lists

  attr_accessible :text, :title, :page_template_id

  before_save :update_slug

  def update_slug
  	self.slug = title.gsub(' ', '-')
  end

  def to_param
  	slug
  end
end
