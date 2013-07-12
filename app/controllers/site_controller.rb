class SiteController < ApplicationController

	layout :resolve_layout

	def home
		# find home page
		@page = Page.where('is_home=?', true).first

		render "page_templates/#{@page.page_template.slug}"
	end

	def page
		@section = Section.find_by_slug(params[:section])
		@page = @section.pages.find_by_slug(params[:page])
		@template = @page.page_template

		if @template.nil?
			@template = PageTemplate.default
		end

		render "page_templates/#{@template.slug}"
	end

	def section
		@section = Section.find_by_slug(params[:section])
		@page = @section.pages.first

		if @page
			redirect_to page_path(@section, @page)
		else
			render "page_templates/empty_section"
		end
	end


  private

  def resolve_layout
  	"site"
  end

end