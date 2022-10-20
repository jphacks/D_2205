Rails.application.routes.draw do
  resources :posts
  resources :users do
    resources :bookmarks, only: [:index, :create, :destroy]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
