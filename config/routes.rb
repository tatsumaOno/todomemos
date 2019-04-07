Rails.application.routes.draw do

  devise_for :users
  devise_scope :user do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :list, only: [:new,:create,:edit,:update,:destroy] do
    resources :card,except: [:index]
  end
  resources :top,only: [:index]
  resources :user,only: [:show]
  root 'top#index'

end
