Rails.application.routes.draw do
  resources :articles do
    resources :comments
  end

  resources :users

  get '/sessions/new' => 'sessions#new'
  post '/sessions' => 'sessions#create'
  get '/sessions' => 'sessions#destroy'

  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
