Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :messages, only: [:index, :create]
  resources :sessions, only: :create

  root 'sessions#new'

end
