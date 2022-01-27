Rails.application.routes.draw do
  resources :images
  devise_for :users
  root 'home#index', as: :home #Rotas no rails com uma definição de atalhos
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Routes to all /all_images call the controller images#show_my_images
  get 'all_images', controller: :images, action: :show_my_images
end
