Rails.application.routes.draw do
  

  resources :locations
  resources :addresss
  devise_for :users
  root 'welcome#index'
end
