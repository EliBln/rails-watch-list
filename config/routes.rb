Rails.application.routes.draw do
 root to: "lists#index"
  resources :lists do
    resources :bookmarks, only: [:create, :new]
  end
  resources :bookmarks, only: [:destroy]

    #  get 'lists', to: 'lists#index'
    #   get 'lists/new', to: 'lists#new'
    #  get 'lists/:id', to: 'lists#show'
    #  post 'lists', to: 'lists#create'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end

# get 'lists', to: 'lists#index'       # Affiche toutes les listes
# get 'lists/new', to: 'lists#new'    # Formulaire pour créer une nouvelle liste
# post 'lists', to: 'lists#create'    # Crée une nouvelle liste
# get 'lists/:id', to: 'lists#show'   # Affiche une liste spécifique
