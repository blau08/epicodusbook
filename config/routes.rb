Rails.application.routes.draw do

  devise_for :users do
    delete 'logout' => 'sessions#destroy', :as => :destroy_user_session
  end
  root 'students#index'
  
  get "api", to: 'students#api'
  resources :students do
    resources :comments
  end

  resources :categories do
    member do
      put "like", to: "categories#upvote"
      put "upcount", to: "categories#upcount"
    end
  end

  resources :dresses do
    member do
      put "upcount", to: "categories#upcount2"
    end
  end

  resources :friends do
    member do
      put "upcount", to: "categories#upcount3"
    end
  end

  resources :students do
    member do
      put "like", to: "students#upvote"
    end
  end

  resources :blogs

  resources :projects

  resources :pictures

  resources :updates

  resources :videos

end
