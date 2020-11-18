Rails.application.routes.draw do
  root 'grants#new'
  resources :grants
end
