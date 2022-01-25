Rails.application.routes.draw do
  devise_for :users
  root 'home#index', as: :home #Rotas no rails com uma definição de atalhos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
