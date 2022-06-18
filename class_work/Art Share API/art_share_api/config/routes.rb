
Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :users, only: [:index,:show,:create,:destroy,:update]
  resources :artworks, only: [:show,:create,:destroy,:update]
  resources :artwork_shares, only: [:create,:destroy]
  resources :comments, only: [:index,:create,:destroy]
  get 'users/:user_id/artworks', to: 'artworks#index'


  # resources :users
  # get 'users/:id', to: 'users#show', as: 'user1'
  # get 'users', to: 'users#index', as: 'users1'
  # get 'users/new', to: 'users#new', as: 'new_user'
  # get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
  

  # #  post
  # post 'users', to: 'users#create', as: 'users2'
  

  # patch 'users/:id', to: 'users#update' , as: 'user2'
  # put 'users/:id', to: 'users#update' , as: 'user3'
  # delete 'users/:id', to: 'users#destroy', as: 'user4'




end
