Codemaptest::Application.routes.draw do  
	root to: "OfflineSchools#index"
  
  resources :OfflineSchools
	resources :online_schools
  resources :quotes
end
