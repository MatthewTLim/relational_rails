Rails.application.routes.draw do
  # Defines the root path route ("/")
  # root "articles#index"

  #---------------Index-------------------
  get '/mtgsets', to: "mtgsets#index"
  get '/mtgsets/new', to: "mtgsets#new"
  post '/mtgsets', to: "mtgsets#create"

  #----------------Show-------------------
  get '/mtgsets/:id', to: "mtgsets#show"

  #----------------Edit-------------------
  get '/mtgsets/:id/edit', to: "mtgsets#edit"
  patch '/mtgsets/:id', to: "mtgsets#update"

  #---------------Cards Index-------------
  get '/cards', to: "cards#index"
  post '/mtgsets/:id/cards', to: "mtgset_cards#create"
  get '/mtgsets/:id/cards/new', to: "mtgset_cards#new"
  get '/mtgsets/:id/cards/:id', to: "cards#show"

  #---------------Parent Child-------------
  get '/mtgsets/:id/cards', to: "mtgset_cards#index"
end

