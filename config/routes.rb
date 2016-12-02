Rails.application.routes.draw do
  resources :visions, only: [:show, :new, :create]

  root 'visions#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
