Rails.application.routes.draw do
  get 'sessions/new'

  root 'application#hello'
  # root 'static_pages#home'

  get 'ccsf_rails/index'

  get 'ccsf_rails/links'

  get 'ccsf_rails/about'
  get 'ccsf_rails/assignments'

  get  'static_pages/home'
  get  'static_pages/help'
  get  'static_pages/about'
  get  'static_pages/contact'

  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  resources :account_activations, only: [:edit]
end
