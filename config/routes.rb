Rails.application.routes.draw do
  mount ActionCable.server => '/cable'
  devise_for :users
  get '/homes/index'
  resources :conversations, only: [:create] do
      member do
          post :close
      end
    resources :messages, only: [:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
