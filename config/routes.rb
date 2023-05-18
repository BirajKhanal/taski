Rails.application.routes.draw do
  get "about", to: "pages#about"
  get "contact", to: "pages#contact"
  get "error", to: "pages#error"

  resources :projects
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#home"

  get "*path", to: redirect("/error")
end
