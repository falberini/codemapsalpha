Codemaptest::Application.routes.draw do  
	root to: "OfflineSchools#index"
  
  resources :OfflineSchools

  resources :quotes
end
