Rails.application.routes.draw do
  resources :users, only: [:new, :create, :destroy]
  resources :sessions, only: [:new, :create, :destroy]

  root "homes#index"  
  
  get 'foods/show'

  get 'foods/new'

  get 'foods/create'

  get 'foods/edit'

  get 'foods/update'

  get 'foods/destroy'

  get 'boards/show'

  get 'boards/new'

  get 'boards/create'

  get 'boards/edit'

  get 'boards/update'

  get 'boards/destroy'

  get 'users/new'
  
  get 'users/create'

  
  get 'homes/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
