require 'resque/server'

Railsapp::Application.routes.draw do

  # TODO: secure resque/server
  mount Resque::Server.new, :at => "/resque"

  scope :api, constraints: { format: :json } do

    devise_for :users
    devise_scope :user do
      post 'login' => 'sessions#create', :as => 'login'
      post 'logout' => 'sessions#destroy', :as => 'logout'
      get 'current_user' => 'sessions#show_current_user', :as => 'show_current_user'
    end

    resources :users, only: [:index, :show]
  end

  # TODO: module to pass along original url & params
  get '/*url', :to => redirect(Railsapp::Application.config.ng_client_url)
  get '/', :to => redirect(Railsapp::Application.config.ng_client_url)
end
