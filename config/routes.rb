Codemaptest::Application.routes.draw do
  resources :locations

  root to: "OfflineSchools#index"
  get '/offlineschools/data' => "offlineschools#data"
  resources :OfflineSchools
end
