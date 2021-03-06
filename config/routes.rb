Rails.application.routes.draw do
  root 'users#new'
  get 'sessions/new'
  resources :users, only: [:new, :create, :show]
  resources :sessions, only: [:new, :show,:create, :destroy]
  resources :feeds do
    collection do
      post :confirm
    end
  end
end
