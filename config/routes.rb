Rails.application.routes.draw do
  get 'sessions/new'

  root to: 'tops#index'
  resources :blogs do
    collection do
      post :confirm
    end
  end

  resources :users
  resources :sessions, only: [:new, :create, :destroy]
  resources :favorites, only: [:create, :destroy]
  resources :contacts

  if Rails.env.development?
    mount LetterOpenerWeb::Engine, at: "/letter_opener"
  end

end
