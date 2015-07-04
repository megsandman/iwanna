Rails.application.routes.draw do


  resources :cities, :only => [:index] do
    resources :neighborhoods, :only => [:index]
  end

  resources :activities, :only => [:index] do
    resources :genres, :only => [:index]
  end

  resources :matches, :only => [:index, :show, :update, :new, :create]
  resources :venues, :only => [:index]

  # resources :websites, :only => [:index]
  # resources :imports, :only => [:index]
  # root to: 'websites#index'

end
