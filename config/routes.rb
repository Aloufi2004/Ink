Rails.application.routes.draw do
  root 'posts#index'
  resources :users
  resources :posts do
    resources :comments
  end
  get 'signup'  => 'users#new'
  get '/login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
