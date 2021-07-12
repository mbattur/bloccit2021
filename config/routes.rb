Rails.application.routes.draw do
  resources :labels, only: [:show]
  resources :topics do
    resources :posts, except: [:index]
  end

  resources :posts, only: [] do
    resources :comments, only: %i[create destroy]

    post '/up-vote' => 'votes#up_vote', as: :up_vote
    post '/down-vote' => 'votes#down_vote', as: :down_vote
  end

  resources :users, only: %i[new create]

  resources :sessions, only: %i[new create destroy]

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
