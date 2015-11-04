Rails.application.routes.draw do
  devise_for :users
  root 'students#index'
  resources :students do
    resources :comments
  end

  resources :categories

  resources :users do
    resources :profiles
  end
end
