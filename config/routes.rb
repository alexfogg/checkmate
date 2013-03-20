Checkmate::Application.routes.draw do
  root :to => 'home#index'
  resources :users, :only => [:new, :create, :show]
  resources :banks, :only => [:new, :create, :show]
  get '/show' => 'banks#new_transaction'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
