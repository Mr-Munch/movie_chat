Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
  	root :to => "devise/sessions#new"
  end

  get 'tops/top'

  resources :users, only: [:show, :update]

  resources :movies, only: [:index, :show] do
  	resources :chats, only: [:index, :create, :destroy]
  end


end
