Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  namespace :api do
    namespace :v1 do
      resources :users
      resources :user_ideas
      resources :events
      resources :friendships
      resources :ideas
      resources :notifications
      resources :guests
      resources :options

    end
  end
end
