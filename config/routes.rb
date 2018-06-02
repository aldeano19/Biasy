Rails.application.routes.draw do
  resources :articles
  resources :journalists
  root 'journalists#index'
end
