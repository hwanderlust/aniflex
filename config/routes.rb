Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:show, :create]
      resources :animes, only: [:show, :index, :search, :create]
      resources :watch_lists, only: [:index, :show, :create]
       get '/animes/search/:term', to: 'animes#search'
       get '/users/:id/:list/animes', to: 'users#animes'
    end
  end
end
