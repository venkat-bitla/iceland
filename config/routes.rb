Rails.application.routes.draw do

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }

  get 'appearance', to: 'home#appearance'
  get ':id', to: 'home#show', as: :user

  root to: "home#index"
end
