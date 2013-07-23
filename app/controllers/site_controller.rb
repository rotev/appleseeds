class SiteController < ApplicationController

	layout :resolve_layout

	def home
		# find home page
		@page = Page.where('is_home=?', true).first

		render_template
	end

	def page
		@section = Section.find_by_slug(params[:section])
		#@page = @section.pages.find_by_slug(params[:page])
		@page = Page.find_by_slug(params[:page])

		render_template
	end

	def section
		@section = Section.find_by_slug(params[:section])
		@template = @section.page_template

		if @template.nil? || @template.slug == "redirect_to_first_page"
			@page = @section.pages.first
			if @page
				redirect_to page_path(@section, @page)
			else
				@template = PageTemplate.default
				render "page_templates/empty_section"
			end
		else
			render "page_templates/#{@template.slug}"
		end

	end


  private

  def resolve_layout
  	"site"
  end

	def render_template		
		@template = @page.page_template

		if @template.nil?
			@template = PageTemplate.default
		end
		
		render "page_templates/#{@template.slug}"
	end

end