class Section < ActiveRecord::Base

	has_many :pages

	belongs_to :page_template

  attr_accessible :name, :page_template_id
  attr_accessible :show_pages_in_main_menu, :show_in_main_menu

  before_save :update_slug

  def pages
    Page.where('section_id=? AND (parent_page_id=-1 OR parent_page_id IS NULL)', id)
  end

  def update_slug
  	self.slug = name.gsub(' ', '-')
  end

  def to_param
  	slug
  end
end
