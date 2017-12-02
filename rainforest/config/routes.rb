Rails.application.routes.draw do


  resources :users
  resources :sessions,only: %i(create new destroy)

  root 'products#index'

  resources :products do
    resources :reviews, except: [:index, :new, :show]
  end

end
