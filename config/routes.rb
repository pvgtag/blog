Rails.application.routes.draw do
  root 'home#index'
  get 'home/index'
  get '/index', to: 'home#index'
  get 'about/about'
  get '/about', to: 'about#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
