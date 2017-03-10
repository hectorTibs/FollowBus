Rails.application.routes.draw do
  resources :reportes
  resources :camiones
  get 'login/index'

  get 'maps/index'

  resources :incidencia
  resources :ruta
  resources :redes_sociales
  resources :empresas
  get 'index/welcome'
root 'index#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
