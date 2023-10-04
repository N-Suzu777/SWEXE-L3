Rails.application.routes.draw do
  resources :twwets
  resources :tweets
  root 'tweets#index'
end
