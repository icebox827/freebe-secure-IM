Rails.application.routes.draw do
  get 'sessions/index'
  get 'chatrooms/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'chatrooms#index'
  get 'login', to: 'sessions#new'
end
