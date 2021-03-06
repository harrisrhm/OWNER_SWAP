Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users

  get '/rails/info/routes' => 'routes'
  
  resources :humans do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:index, :show, :update, :destroy] do
    resources :reviews
  end
end
