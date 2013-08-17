# encoding: UTF-8

ActiveAdmin.register Section do
    controller do
        defaults :finder => :find_by_slug
    end

    index do
    	column :id
    	column :name
    	column :show_in_main_menu
    	column :show_pages_in_main_menu
    	column :page_template
    	default_actions
    end
  
  	show do |section|
	    attributes_table do
	      row :name
	      row :show_in_main_menu
	      row :slug
	      row :show_pages_in_main_menu
	      row :page_template
	    end
	  end

    form do |f|
    	f.inputs "הגדרות" do
    		f.input :page_template
    		f.input :show_in_main_menu
    		f.input :show_pages_in_main_menu
    	end
      f.inputs "כותרת" do
        f.input :name
      end
    end
end
