Rails.application.routes.draw do
  devise_for :users
  root 'students#index'
  resources :students do
    resources :comments
  end

  resources :categories do
    member do
      put "like", to: "categories#upvote"
    end
  end

  resources :users do
    resources :profiles
  end

  resources :profiles do
    resources :comments
  end

  resources :students do
    member do
      put "like", to: "students#upvote"
    end
  end

  resources :blogs

end
