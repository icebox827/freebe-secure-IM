Rails.application.routes.draw do
  root 'sessions#new'
  get 'signup', to: 'users#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: %i[index show create edit update destroy]
  resources :chatrooms
end
