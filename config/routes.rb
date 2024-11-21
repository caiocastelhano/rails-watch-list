Rails.application.routes.draw do
  # rotas de lists passo a passo
  # get "lists", to: "lists#index"
  # get "lists/new", to: "lists#new", as: "new_list"
  # post "lists", to: "lists#create"
  # get "lists/:id", to: "lists#show" 

  # rotas de listas transformadas em resources
  # mostrar todas as listas
  # criar uma nova lista
  # mostrar uma lista através do id
  resources :lists, only: [:index, :new, :create, :show] do
    resources :bookmarks, only: [:new, :create]
  end

  # rotas de bookmarks passo a passo
  resources :bookmarks, only: [:destroy]
  
end
