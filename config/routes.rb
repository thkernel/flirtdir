Rails.application.routes.draw do
  resources :comments
  resources :ads
  resources :habits
  resources :professional_informations
  resources :hobby_profiles
  resources :hobbies
  resources :languages
  resources :addresses
  resources :profiles
  resources :permission_roles
  resources :permissions
  resources :roles
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
