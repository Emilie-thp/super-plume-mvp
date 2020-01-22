Rails.application.routes.draw do
  
  root 'offers#new'
  resources :offer, only: [:new]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
