Rails.application.routes.draw do

  root 'questions#index'

  resources :questions do
  	resources :answers
  end

  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks" }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


end
