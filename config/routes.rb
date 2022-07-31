Rails.application.routes.draw do
  devise_for :employees
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :employees, :only => [:index, :show, :edit, :update] 
  root 'employees#index'
  get '/leaves' => 'leaves#index'
  get '/leaves/new' => 'leaves#new'
  post '/leaves' => 'leaves#create'
  delete '/leaves/:id' => 'leaves#destroy'
   # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
