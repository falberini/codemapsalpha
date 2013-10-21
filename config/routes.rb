Codemaptest::Application.routes.draw do
  resources :locations

  root to: "OfflineSchools#index"
  resources :OfflineSchools
end
