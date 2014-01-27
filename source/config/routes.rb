Airbo::Application.routes.draw do

  resources :charges
  resources :customers
  root 'charges#index'

end
