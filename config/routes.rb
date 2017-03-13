Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }
  resources :reportes
  resources :camiones
  get 'login/index'

  get 'maps/index'

  resources :incidencia
  resources :ruta
  resources :redes_sociales
  resources :empresas
  get 'index/welcome'
root 'home#index'
match '/users/:id/finish_signup' => 'users#finish_signup', via: [:get, :patch], as: :finish_signup

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
