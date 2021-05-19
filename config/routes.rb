Rails.application.routes.draw do
<<<<<<< HEAD
  resources :topics do
    resources :posts, except: [:index]
  end
=======
  resources :questions
  resources :posts
>>>>>>> 710b56737820b65dc653618cfefa72fc71c81376

  get 'about' => 'welcome#about'

  root 'welcome#index'
end
