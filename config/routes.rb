Rails.application.routes.draw do
  root to: 'doctors#index'
  # For details on the DSL available within this file, see http s://guides.rubyonrails.org/routing.html
  resources :doctors, only: [:index, :show, :new] do
    resources :appointments, only: [:new, :create]
  end
  resources :appointments, only: [:show]

end
