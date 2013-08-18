# encoding: UTF-8

ActiveAdmin.register Component do

    menu :parent => "ניהול"



    form do |f|
    	f.inputs "הגדרות" do
    		f.input :components_list
    		f.input :url
    	end
      f.inputs "כותרות" do
        f.input :title
        f.input :subtitle
      end
      f.inputs "תוכן" do
        f.input :short_description, as: :html_editor
        f.input :description, as: :html_editor
        f.input :image, as: :file, hint: f.template.image_tag(f.object.image.url(:small))
      end
      f.actions
    end      
  
end
