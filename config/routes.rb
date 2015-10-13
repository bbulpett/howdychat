Rails.application.routes.draw do
  get 'sessions/create'

  get 'messages/index'

  get 'messages/create'

  get 'pages/home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :messages, only: [:index, :create]
  resources :sessions, only: [:new, :create]

  root 'sessions#new'

end
