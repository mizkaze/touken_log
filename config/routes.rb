Rails.application.routes.draw do

  namespace :public do
    get 'homes/top'
  end
  # adminは登録画面とパス変更画面はいらないから↓
  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
  sessions: "admin/sessions"
  }

  devise_for :users, controllers: {
  registrations: "public/registrations",
  sessions: 'public/sessions'
  }

end
