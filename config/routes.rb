Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".


####### Moved examples to the bottom for reference

####### Potential routes

    # root 'cards#index'

    # Show all cards - search function?
    get 'cards/show' => 'cards#index'

    #Create new card
    get 'cards/create' => 'cards#create'

    # show card, maybe tags? link to edit/delete
    get 'cards/:id/show' => 'cards#show'

    # edit page, needs to load with current tags selected
    get 'cards/:id/update' => 'cards#edit'

    # delete page, redirect_to '/cards/show'
    get 'cards/:id/delete' => 'cards#delete'

    # instructions with a "Play Game!" button
    # get 'game/instructions' =>

    # actual game instance
    # get 'game/play' =>


    # Multiplayer? - Multiplayer needs minimum database
    # size for fair gameplay. Or you could just have 9
    # people and memorize the easiest method of parsing


    # get 'multiplayer/play'

    # game history, need to figure out what to show before making DB
    # get 'multiplayer/history'

    # friends to play with
    # get 'multiplayer/friends'

end




  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
