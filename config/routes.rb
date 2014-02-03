Giftegg::Application.routes.draw do
  
  # Site controller
  root to: "site#index"

  get "/about", to: "site#about", as: :about

  get "/contact", to: "site#contact", as: :contact

  # Users controller
  get "/users/new", to: "users#new"

  get "/users/:id", to: "users#show"

  # Giftees controller
  get "/giftees/new", to: "giftees#new"

  get "/giftees/:id", to: "giftees#show"



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