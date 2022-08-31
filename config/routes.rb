Rails.application.routes.draw do
  devise_for :users
  resources :schools
  resources :students do 
    resources :accounts
  end

  root 'schools#index'
end
