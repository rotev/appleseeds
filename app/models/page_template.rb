class PageTemplate < ActiveRecord::Base
	has_many :pages

  attr_accessible :name

  def self.default
  	find_by_default(true)
  end
end
