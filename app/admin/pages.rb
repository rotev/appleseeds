# encoding: UTF-8

ActiveAdmin.register Page do  
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
        f.input :text
      end
      f.actions
    end    
end
