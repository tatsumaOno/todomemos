Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :list, only: [:new,:create,:edit,:update,:destroy] do
    resources :card,except: [:index]
  end
  resources :top,only: [:index]
  root 'top#index'

end
