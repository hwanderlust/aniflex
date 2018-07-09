Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:show]
      resources :watch_lists, only: [:index, :show]
    end
  end
end
