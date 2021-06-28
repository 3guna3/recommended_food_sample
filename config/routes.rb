Rails.application.routes.draw do
  devise_for :users
  root "foods#index"
  resources :foods do
    resource :likes, only: [:create, :destroy]
  end
end
