Rails.application.routes.draw do
  devise_for :users
  root to: 'home#show'
  get 'persons/profile', as: 'user_root'
end
