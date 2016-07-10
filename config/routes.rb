Rails.application.routes.draw do
  
  resources :dossiers do
    resources :sheets
  end

  resources :sheets do
    resources :sections
  end

  resources :sections do
    resources :fields
  end

  root to: 'main#index'

  get 'hello_world', to: 'hello_world#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
