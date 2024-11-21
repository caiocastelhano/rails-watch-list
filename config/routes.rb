Rails.application.routes.draw do
  # rotas de lists
  # mostrar todas as listas
  get "lists", to: "lists#index"
   # criar uma nova lista
   get "lists/new", to: "lists#new", as: "new_list"
   post "lists", to: "lists#create"
  # mostrar uma lista através do id
  get "lists/:id", to: "lists#show" 

  # rotas de bookmarks
end
