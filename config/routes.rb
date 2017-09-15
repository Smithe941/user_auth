Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'users/registrations'}
  root to: 'home#show'
  get 'persons/profile', as: 'user_root'
end
