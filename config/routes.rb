Rails.application.routes.draw do
  root 'home#index'
  
  get 'auth/:provider/callback', to: 'sessions#create'
  get 'auth/failure', to: redirect('/')
  delete 'signout', to: 'sessions#destroy', as: 'signout'

  resources :sessions, only: %i(new create destroy)
  resources :home, only: %i(index)

  get "up" => "rails/health#show", as: :rails_health_check
end
