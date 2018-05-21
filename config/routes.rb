Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#home'
  post '/sessions', to: 'sessions#create'

  mount ActionCable.server, at: '/cable'
end
