Rails.application.routes.draw do
 
  resources :households
  resources :incidents
  resources :health_records
  resources :users
 	resources :records
	resources :incidents
	resources :me

root to: "pages#index"

get "login", to: "pages#show_login"
post "login", to: "pages#new_login"
get "logout", to: "pages#logout"



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
