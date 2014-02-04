Giftegg::Application.routes.draw do
 
  # Site controller
  root to: "site#index"

  get "/about", to: "site#about", as: :about

  get "/contact", to: "site#contact", as: :contact

  # Users controller
  get "/signup", to: "users#new"

  get "/users/:id", to: "users#show", as: :user

  post "/users", to: "users#create"

  # Giftees controller
  get "/giftees", to: "giftees#index", as: :giftees

  get "/giftees/new", to: "giftees#new", as: :new_giftee

  get "/giftees/:id", to: "giftees#show", as: :giftee

  post "/giftees", to: "giftees#create"

  # Sessions controller
  delete "/signout", to: "sessions#destroy", via: :delete
  
  get "/signin", to: "sessions#new"

  post "/signin", to: "sessions#create"



end

#     Prefix Verb   URI Pattern                 Controller#Action
 # site_index GET    /site(.:format)          site#index
 #            POST   /site(.:format)          site#create
 #   new_site GET    /site/new(.:format)      site#new
 #  edit_site GET    /site/:id/edit(.:format) site#edit
 #       site GET    /site/:id(.:format)      site#show
 #            PATCH  /site/:id(.:format)      site#update
 #            PUT    /site/:id(.:format)      site#update
 #            DELETE /site/:id(.:format)      site#destroy

#       users GET    /users(.:format)            users#index
#             POST   /users(.:format)            users#create
#    new_user GET    /users/new(.:format)        users#new
#   edit_user GET    /users/:id/edit(.:format)   users#edit
#        user GET    /users/:id(.:format)        users#show
#             PATCH  /users/:id(.:format)        users#update
#             PUT    /users/:id(.:format)        users#update
#             DELETE /users/:id(.:format)        users#destroy

#     giftees GET    /giftees(.:format)          giftees#index
#             POST   /giftees(.:format)          giftees#create
#  new_giftee GET    /giftees/new(.:format)      giftees#new
# edit_giftee GET    /giftees/:id/edit(.:format) giftees#edit
#      giftee GET    /giftees/:id(.:format)      giftees#show
#             PATCH  /giftees/:id(.:format)      giftees#update
#             PUT    /giftees/:id(.:format)      giftees#update
#             DELETE /giftees/:id(.:format)      giftees#destroy

#     sessions GET    /sessions(.:format)          sessions#index
#              POST   /sessions(.:format)          sessions#create
#  new_session GET    /sessions/new(.:format)      sessions#new
# edit_session GET    /sessions/:id/edit(.:format) sessions#edit
#      session GET    /sessions/:id(.:format)      sessions#show
#              PATCH  /sessions/:id(.:format)      sessions#update
#              PUT    /sessions/:id(.:format)      sessions#update
#              DELETE /sessions/:id(.:format)      sessions#destroy