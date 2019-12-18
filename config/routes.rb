Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to:'authors#index'
  resources :authors, :books
  get "authors", to: "authors#index"
  get "authors/:id", to: "authors#show" # , as: :authors
  get "about", to: "application#about"
  get "authors/new", to: "authors#new"
  post "authors", to: "authors#create"
  get "authors/:id/edit", to: "authors#edit", as: :authors_edit
  patch "authors/:id", to: "authors#update"
  delete "authors/:id", to: "authors#destroy"

  get "books/new", to: "books#new"
  post "books", to: "books#create"
end
