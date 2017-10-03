Rails.application.routes.draw do
  
  mount Ckeditor::Engine => '/ckeditor'
  resources :requests, only: [:index, :new, :create]
  
  resources :blogs
  
    
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  match '/index', to: "whatwedo#index", via: :get
  match '/brand', to: "whatwedo#brand", via: :get
  match '/consulting', to: "whatwedo#consulting", via: :get  
  match '/salesmarketing', to: "whatwedo#salesmarketing", via: :get
  match '/modernization', to: "whatwedo#modernization", via: :get


  match '/career', to: "career#index", via: :get
  

	root "whatwedo#index"

end

