Rails.application.routes.draw do

  get 'categories/index' => 'categories_controller#index'
  get 'post/index' => 'posts_controller#index'
  get 'home/index' => 'home_controller#index'
  root 'home#index'
  resources :posts
  resources :categories

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
