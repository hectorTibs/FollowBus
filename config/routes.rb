Rails.application.routes.draw do
  resources :posts
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  resources :reportes
  resources :camiones
  get 'login/index'

  get 'maps/index'
  get 'reportes/index'
   get 'reportes/compartir'
   
 get 'posts/index'
  resources :incidencia
  resources :ruta
  resources :redes_sociales
  resources :empresas
  get 'index/welcome'
root 'reportes#new'

devise_scope :user do
  get 'signin' => "devise/sessions#new", :as => :login
end
#get '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], as: :finish_signup

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

