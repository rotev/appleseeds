# encoding: UTF-8

ActiveAdmin.register Page do  

    config.sort_order = 'position_asc'

    menu :parent => "ניהול"

    #preserve_default_filters!
    filter :section, collection: proc { Section.order('position ASC') }

    # This action is called by javascript when you drag and drop a column
    # It iterates through the collection and sets the new position based on the
    # order that jQuery submitted them
    collection_action :sort, :method => :post do
        params[:page].each_with_index do |id, index|
            Page.update_all(['position=?', index+1], ['id=?', id])
        end
        render :nothing => true
    end

    controller do
        defaults :finder => :find_by_slug
    end

    index do
        selectable_column
    	column :id
        column :image do |page|
            image_tag page.image.url(:small)
        end
    	column :title do |page|
            link_to page.title, admin_page_path(page)
        end
    	column :subtitle
    	#column :slug
    	bool_column :is_home
    	#column :created_at
    	#column :updated_at
    	default_actions
    end

    show do |page|
    	attributes_table do
	    	row :id
	    	row :title
	    	row :subtitle
	    	#column :slug
	    	bool_row :is_home
	    	row :created_at
	    	row :updated_at
	    end

        if page.text
            panel "תוכן" do
                div page.text.html_safe
            end
        end

        sub_pages = page.sub_pages
        if sub_pages.count > 0
            panel "תתי עמודים" do
                render partial: "sub_pages", locals: { pages: page.sub_pages }
            end
        end

        if page.components_lists.count > 0
            panel "רשימות רכיבים" do
                table_for page.components_lists do
                  column "" do |list|
                    link_to list.name, admin_components_list_path(list)
                  end
                end            
            end
        end
    end

    form do |f|
    	f.inputs "הגדרות" do
    		f.input :section
    		f.input :page_template
    		f.input :parent_page
    		f.input :is_home
    	end
      f.inputs "כותרת" do
        f.input :title
        f.input :subtitle
      end
      f.inputs "תוכן" do
        f.input :text, as: :html_editor
        f.input :image, as: :file, hint: f.template.image_tag(f.object.image.url())
      end
      f.actions
    end    
end
