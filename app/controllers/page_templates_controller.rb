class PageTemplatesController < ApplicationController
  active_scaffold :"page_template" do |conf|
  	conf.columns.exclude :created_at, :updated_at
  	conf.update.columns.exclude :sections, :pages
  	conf.create.columns.exclude :sections, :pages
  end
end
