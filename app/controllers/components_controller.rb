class ComponentsController < ApplicationController
  active_scaffold :"component" do |conf|
		conf.columns[:image].form_ui = :paperclip
		conf.columns.exclude :created_at, :updated_at
  end
end
