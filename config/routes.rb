Ens::Application.routes.draw do

  resources :geos

  #allow post and put methods
  post 'geos/:id' => 'geos#update'

  devise_for :users
  root to: "home#index"
end
