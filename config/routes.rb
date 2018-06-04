Rails.application.routes.draw do
  resources :articles
  resources :journalists

  root 'dashboard#index'

  get 'dashboard' => 'dashboard#index'

  get 'analisys' => 'dashboard#doc_collection_analisys'
end
