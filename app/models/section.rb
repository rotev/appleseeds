class Section < ActiveRecord::Base

	has_many :pages

  attr_accessible :name

  before_save :update_slug

  def update_slug
  	self.slug = name.gsub(' ', '-')
  end

  def to_param
  	slug
  end
end
