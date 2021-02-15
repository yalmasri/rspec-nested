Rails.application.routes.draw do
  resources :exchanges, only: :create
end
