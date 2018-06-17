Rails.application.routes.draw do
  resources :thoughts
  devise_for :users

  root to: "thoughts#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
