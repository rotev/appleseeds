class PageTemplate < ActiveRecord::Base
	has_many :pages
	has_many :sections

  attr_accessible :name, :slug, :default

  def self.default
  	find_by_default(true)
  end

  def self.list
  	find_by_slug("list_section")
  end
end
