# encoding: UTF-8

ActiveAdmin.register Section do
    

    config.sort_order = 'position_asc'
    config.filters = false

    #actions :all, except: [:show]

    menu label: "תכנים", priority: 1

    # This action is called by javascript when you drag and drop a column
    # It iterates through the collection and sets the new position based on the
    # order that jQuery submitted them
    collection_action :sort, :method => :post do
        params[:section].each_with_index do |id, index|
            Section.update_all(['position=?', index+1], ['id=?', id])
        end
        render :nothing => true
    end

    controller do
        defaults :finder => :find_by_slug
    end

    index do
        selectable_column
    	column :id
    	column :name do |section|
            link_to section.name, admin_section_path(section)
        end
        bool_column :show_in_main_menu
        bool_column :show_pages_in_main_menu
    	column :page_template do |section|
            label section.page_template.name
        end
    	default_actions
    end
  
  	show do |section|
	    attributes_table do
	      row :name
          row :slug
          row :page_template
	      bool_row :show_in_main_menu
          bool_row :show_pages_in_main_menu
	    end

        pages = section.pages
        if pages.count > 0
            panel "עמודים" do
                table_for pages do
                    column "תמונה" do |page|
                        link_to image_tag(page.image.url(:small)), admin_page_path(page)
                    end
                    column "כותרת" do |page|
                        link_to page.title, admin_page_path(page)
                    end
                    column :subtitle
                end            
            end
        end
	end

    form do |f|
    	f.inputs do
            f.input :name
    		f.input :page_template
    		f.input :show_in_main_menu
    		f.input :show_pages_in_main_menu
    	end
        f.actions
    end

end
