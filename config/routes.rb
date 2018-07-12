Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:show, :create]
      resources :watch_lists, only: [:index, :show]
      resources :animes, only: [:show, :index, :search]
       get '/animes/search/:term', to: 'animes#search'
    end
  end
end
