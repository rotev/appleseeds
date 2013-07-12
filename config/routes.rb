Dev::Application.routes.draw do

  resources :components do as_routes end

  resources :components_lists do as_routes end

  resources :add_section_to_pages


  resources :sections do as_routes end

  resources :page_templates do as_routes end
  resources :sections do
    resources :pages do 
      as_routes 
    end
    
    as_routes
  end
  resources :pages do 
    as_routes 
  end
  
  match '/admin' => 'admin#index', as: 'admin'

  match '/:section' => 'site#section', as: 'section'
  match '/:section/:page' => 'site#page', as: 'page'

  root :to => 'site#home'

end
