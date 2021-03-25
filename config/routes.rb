Rails.application.routes.draw do
  root "movies#index"
 resources :movies
   get "/movies", to: "movies#index"
   get "/omdb", to: "omdb#index"
   get "/omdb/show/", to: "omdb#show"
   get "/articles", to: "articles#index"
end
 