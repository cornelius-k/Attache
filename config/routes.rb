Rails.application.routes.draw do

  resources :dossiers do
    member { get 'as_html', 'write', 'publish'}
    resources :sheets
  end

  get 'blocks/:type' => 'blocks#get_template', as: 'block_template'

  get 'dossiers/:id/preview' => 'dossiers#preview'
  get 'dossiers/:id/preview/:sheet_template' => 'dossiers#preview'

  root to: 'dossiers#index'

  get 'hello_world', to: 'hello_world#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
