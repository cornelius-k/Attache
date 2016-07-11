Rails.application.routes.draw do

  resources :dossiers do
    member { get 'as_html', 'write'}
    resources :sheets
  end

  get 'blocks/:type' => 'blocks#get_template', as: 'block_template'

  root to: 'main#index'

  get 'hello_world', to: 'hello_world#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
