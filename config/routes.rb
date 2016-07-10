Rails.application.routes.draw do
  resources :fields
  resources :sections
  resources :sheets
  resources :dossiers
  root to: 'main#index'

  get 'hello_world', to: 'hello_world#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
