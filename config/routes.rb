Rails.application.routes.draw do
  resources :specials
  namespace :api do
    namespace :v1 do
      resources :categories
      resources :restaurants
      # resources :users, only: %i[create update]
      # post '/login', to: 'auth#create'
      # get '/profile', to: 'users#profile'
    end
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
