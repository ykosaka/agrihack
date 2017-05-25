Rails.application.routes.draw do
  resources :yasais
  root to: 'yasais#index'  
end
