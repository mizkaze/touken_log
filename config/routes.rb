Rails.application.routes.draw do

  devise_for :users, controllers: {
  registrations: "user/registrations",
  sessions: 'user/sessions'
  }


  root to: "homes#top"

end
