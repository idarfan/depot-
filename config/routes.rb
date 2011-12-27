Depot::Application.routes.draw do
  get 'admin' => 'admin#index'

  controller :sessions do
    get  'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  #get "admin/index"
  #get "sessions/new"
  #get "sessions/create"
  #get "sessions/destroy"

  resources :users

  resources :orders

  resources :line_items

  resources :carts

  get "store/index"
  resources :products  
  root :to => 'store#index', :as => 'store'
end