class ComponentsController < ApplicationController
  active_scaffold :"component" do |conf|
		conf.columns[:image].form_ui = :paperclip
  end
end
