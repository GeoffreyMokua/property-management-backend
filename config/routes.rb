Rails.application.routes.draw do
  resources :maintenances
  resources :houses
  resources :tenants
  post "tenant_login",to: "auth#create" 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
