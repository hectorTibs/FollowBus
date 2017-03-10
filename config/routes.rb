Rails.application.routes.draw do
  resources :empresas
  get 'index/welcome'
root 'index#welcome'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
