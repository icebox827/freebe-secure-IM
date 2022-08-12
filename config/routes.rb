Rails.application.routes.draw do
  root 'sessions#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users, only: %i[new create show]
  resources :chatrooms
  resources :sessions, only: %i[new create destroy]
  scope :sessions do
    get 'sign_out' => 'sessions#destroy'
  end
end
