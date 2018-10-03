Rails.application.routes.draw do
  resources :users
  resources :posts
  root 'home#index'
  get '/home(/:hello)', to: 'home#index'
  get 'posts/page/(:page(.:format))', to: 'posts#index'
  # get 'home/index'
  # get 'some_another_url', to: 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end