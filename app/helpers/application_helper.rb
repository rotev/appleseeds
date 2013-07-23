module ApplicationHelper

	def aggregate_page_path(page)

		path = "/#{page.slug}"

		parent_page = page.parent_page

		while parent_page
			path = "/#{parent_page.slug}#{path}"
			parent_page = parent_page.parent_page
		end

		path = "/#{page.section.slug}#{path}"		

	end

end
