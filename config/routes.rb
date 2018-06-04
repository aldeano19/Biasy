Rails.application.routes.draw do
  resources :articles
  resources :journalists

  root 'dashboard#index'

  get 'dashboard' => 'dashboard#index'

  get 'analysis' => 'dashboard#doc_collection_analysis'
end
