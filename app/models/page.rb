class Page < ActiveRecord::Base

  default_scope order('position ASC')

	belongs_to :section
	belongs_to :page_template

	has_many :components_lists

  has_many :sub_pages, class_name: 'Page' #, foreign_key: 'parent_page_id'
  belongs_to :parent_page, class_name: 'Page', foreign_key: 'parent_page_id'
  
  has_attached_file :image, styles: { small: "60x60>" }

  attr_accessible :text, :title, :page_template_id, :parent_page_id
  attr_accessible :section_id, :subtitle, :is_home

  before_save :update_slug

  def sub_pages
    Page.where('parent_page_id=? AND section_id IS NOT NULL', id)
  end

  def pages
    sub_pages
  end

  def update_slug
  	self.slug = title.gsub(' ', '-')
  end

  def to_param
  	slug
  end
end
