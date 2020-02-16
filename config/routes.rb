Rails.application.routes.draw do
  get 'home/index'
  get 'cgu' => "pages#cgu", as: :cgu

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
  #devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'dashboard#index', as: :authenticated_root
    end

    unauthenticated do
      root 'users/registrations#new', as: :unauthenticated_root
    end
  end
  

  devise_for :users, path: '', controllers: { 
    registrations: "users/registrations",
    confirmations: 'users/confirmations',
    passwords: "users/passwords",
    sessions: "users/sessions"
    
  }, 
  path_names: {
      sign_in: 'login', 
      sign_out: 'logout', 
      password: 'secret', 
      confirmation: 'verification', 
      unlock: 'unblock', 
      registration: 'signup', 
      sign_up: '' ,
      omniauth_callbacks: 'users/omniauth'
  }



  # Dynamic error pages
  get "/404", to: "errors#not_found"
  get "/422", to: "errors#unacceptable"
  get "/500", to: "errors#internal_error"

end
