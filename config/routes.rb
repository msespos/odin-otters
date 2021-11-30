Rails.application.routes.draw do
  resources :otters
  root 'otters#index'
end
