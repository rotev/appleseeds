# encoding: UTF-8

ActiveAdmin.register Page do  

    config.sort_order = 'position_asc'

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
    	column :id
    	column :title
    	column :subtitle
    	#column :slug
    	column :is_home
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
	    	row :is_home
	    	row :created_at
	    	row :updated_at
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
