Rails.application.routes.draw do


  resource :users, only: %i(create new)
  resource :sessions,only: %i(create new destroy)

  root 'products#index'

  resources :products do
    resources :reviews, except: [:index, :new, :show]
  end

end
