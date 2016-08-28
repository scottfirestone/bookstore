Rails.application.routes.draw do
  root to: "store#index"

  resources :books, only: [:new, :create]
end
