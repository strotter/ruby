Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  # Don't forget CORS update below in initializers
  # resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head]

  resources :items, headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head]

  # Catch-all route for React Router
  #get '*path', to: redirect('/?goto=%{path}')
end
