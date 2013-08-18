# encoding: UTF-8

ActiveAdmin.register ComponentsList do

  menu :parent => "ניהול"
  
  #config.sort_order = 'position_asc' # TODO: add position to components lists.

	show do |list|
      if list.components.count > 0
          panel "רכיבים" do
              table_for list.components do
                column "" do |component|
                  link_to component.title, admin_components_path(component)
                end
              end            
          end
      end
	end

end
