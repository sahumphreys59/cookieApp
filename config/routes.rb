Rails.application.routes.draw do
  get 'contact_form/new'
  get 'contact_form/create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'
  get '/shop' => 'pages#shop'
  get '/flavors' => 'pages#flavors'

  resources :contact_forms
end
