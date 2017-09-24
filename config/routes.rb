Rails.application.routes.draw do
  root 'posts#index'

  devise_for :users, controllers: { registrations: 'users/registrations' }
  devise_scope :user do
    get 'profile', to: 'users/registrations#show'
  end
  resources :posts do
    resources :comments, only: %i[create destroy]
  end
end
