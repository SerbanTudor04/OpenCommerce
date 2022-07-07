Rails.application.routes.draw do
  resources :admin_users
  get "/admin_authentication", to: "admin_authentication#index"

  
  get "/admin_dashboard", to: "admin_dashboard#login"
end
