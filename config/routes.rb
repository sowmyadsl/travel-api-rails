Rails.application.routes.draw do
  devise_for :users
   post 'auth_user' => 'authentication#authenticate_user'
   get 'home' => 'v1/places#index'

  # use_doorkeeper
  concern :paginatable do
    get '(page/:page)', action: :index, on: :collection, as: ''
  end


  concern :api_base do
    resources :places, concerns: :paginatable do
      resources :reviews
    end
  end


  namespace :v1 do
    concerns :api_base
  end
end
