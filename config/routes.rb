Rails.application.routes.draw do
  resources :topics do
    resources :posts, except: [:index]
  end

  resources :posts, only: [] do
    resources :comments, only: %i[create destroy]
  end

  resources :users, only: %i[new create]

  resources :sessions, only: %i[new create destroy]

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
