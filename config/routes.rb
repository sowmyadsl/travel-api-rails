Rails.application.routes.draw do
  # use_doorkeeper
  concern :api_base do
    resources :places do
      resources :reviews
    end
  end

  
  namespace :v1 do
    concerns :api_base
  end
end
