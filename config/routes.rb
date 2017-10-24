Rails.application.routes.draw do
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


  resources :users
end
