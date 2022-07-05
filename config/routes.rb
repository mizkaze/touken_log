Rails.application.routes.draw do

  devise_for :users, controllers: {
  registrations: "user/registrations",
  sessions: 'user/sessions'
  }

  scope module: :user do
    resources :users, only: [:show, :edit, :index] do
    end
  end

  namespace :admin do
    resources :users, only: [:index, :show, :edit, :update] do
    end
  end

  root to: "homes#top"

end
