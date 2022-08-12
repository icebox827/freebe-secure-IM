Rails.application.routes.draw do
  get 'sessions/index'
  get 'chatrooms/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'chatroom#index'
  get 'login', to: 'session#new'
end
