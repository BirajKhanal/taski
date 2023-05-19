Rails.application.routes.draw do
  devise_for :users
  get "about", to: "pages#about"
  get "contact", to: "pages#contact"
  get "error", to: "pages#error"

  resources :projects do
    resources :tasks, except: [:index], controller: 'projects/tasks'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "pages#home"

  get "*path", to: redirect("/error")
end
