Rails.application.routes.draw do
  post 'authenticate', to: 'authentication#authenticate'

  get '/projects/search', to: 'projects#search'
  resources :projects, only: [:show, :index]

  namespace :admin do 
    resources :projects
    resources :users
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
