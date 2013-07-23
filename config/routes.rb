Dev::Application.routes.draw do

  resources :pages do 
      resources :components_lists do 
        resources :components do as_routes end
        as_routes 
      end
      as_routes 
  end
  
  resources :page_templates do as_routes end
  resources :sections do
    resources :pages do 
      # resources :sub_pages do
      #   as_routes
      # end
      resources :components_lists do 
        resources :components do as_routes end
        as_routes 
      end
      as_routes 
    end
    
    as_routes
  end
  
  match '/admin' => 'admin#index', as: 'admin'

  match '/:section' => 'site#section', as: 'section'
  match '/:section/:page' => 'site#page', as: 'page'
  match '/:section/:parent_page/:page' => 'site#page', as: 'sub_page'
  match '/:section/:parent_page2/:parent_page/:page' => 'site#page', as: 'sub_page2'

  root :to => 'site#home'

end
