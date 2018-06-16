Rails.application.routes.draw do
  
  root 'homes#index'  

  get 'lectures/index'
  get 'lectures/show'
  get 'lectures/new'
  get 'lectures/create'
  get 'lectures/edit'
  get 'lectures/update'
  get 'lectures/destroy'
  
  get 'comments/create'
  get 'comments/destroy'
  
  get 'exercises/index'
  get 'exercises/new'
  get 'exercises/create'
  get 'exercises/edit/:exercise_id' => 'exercises#edit'
  get 'exercises/update/:exercise_id' => 'exercises#update'
  get 'exercises/destroy/:exercise_id' => 'exercises#destroy'
  get 'tusers/new'
  get 'tusers/create'
  
  get 'boards/new'
  get 'boards/create' => 'boards#create'
  get 'boards/read/:post_id' => 'boards#read'
  get 'boards/edit/:post_id' => 'boards#edit'
  get 'boards/update/:post_id' => 'boards#update'
  get 'boards/destroy/:post_id' => 'boards#destroy'
  
  get 'tboards/new'
  get 'tboards/create'
  get 'tboards/read/:post_id' => 'tboards#read'
  get 'tboards/edit/:post_id' => 'tboards#edit'
  get 'tboards/update/:post_id' => 'tboards#update'
  get 'tboards/destroy/:post_id' => 'tboards#destroy'
  get 'tboards/show'
  
  get 'foods/create'
  
  resources :users, only: [:new, :create, :destroy]
  resources :tusers, only: [:new, :create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]
  resources :tsessions, only: [:new, :create, :destroy]
  resources :boards
  resources :foods
  
  resources :boards do
    resources :comments, only: [:create, :destroy]
  end

  
  get 'homes/index'

  # get 'foods/show'
  # get 'foods/new'
  # get 'foods/create'
  # get 'foods/edit'
  # get 'foods/update'
  # get 'foods/destroy'


  get 'users/create'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
