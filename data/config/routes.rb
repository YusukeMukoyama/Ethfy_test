Rails.application.routes.draw do
  root to: "users#index"
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions',
    :confirmations => 'users/confirmations',
    :passwords => 'users/passwords'
  } 

  devise_scope :user do
    get "sign_in", :to => "users/sessions#new"
    get "sign_out", :to => "users/sessions#destroy" 
  end

  resources :users, :only => [:show, :create, :edit, :update, :destroy]
  resources :wallets, :only => [:index, :show, :create, :destroy]
  resource :two_factor_auth, only: [:new, :create, :destroy]

  get 'wallet', :controller => "users", :actoin => "wallet"
  get 'transfer', :controller => "users", :action => "transfer"
  post 'transfer_done', :controller => "users", :action => "transfer_done"
end
