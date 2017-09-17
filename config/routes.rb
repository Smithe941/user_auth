Rails.application.routes.draw do
  root to: 'home#show'

  devise_for :users, controllers: { registrations: 'users/registrations' }
  devise_scope :user do
    get 'profile', to: 'users/registrations#show'
  end
end
