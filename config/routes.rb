Rails.application.routes.draw do

  root to: "homes#top"

  post '/guests/guest_sign_in', to: 'guests#new_guest'

  devise_for :users, controllers: {
  registrations: "user/registrations",
  sessions: 'user/sessions'
  }

  namespace :admin do
    resources :users, only: [:index, :show, :edit, :update] do
    end
  end

  resources :users, only: [:index, :show, :edit, :update]
  resources :posts



end
