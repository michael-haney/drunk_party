Rails.application.routes.draw do
  resources :drinking_games
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'drinking_games#homepage'
  get 'index' => 'drinking_games#index'
  get 'construction' => 'drinking_games#construction'
  get 'Baseball' => 'descriptions#Baseball'
  get 'Civil War' => 'descriptions#Civil War'
  get 'Quarters' => 'descriptions#Quarters'
  get 'Flip Cup' => 'descriptions#Flip Cup'
  get 'Solocup' => 'articles#Solocup'
  get 'Wizard Staff' => 'descriptions#Wizard Staff'
  get '7s, 11s, & Doubles' => 'descriptions#7s, 11s, & Doubles'
  get 'Asshole' => 'descriptions#Asshole'
  get 'Kings Cup' => 'descriptions#Kings Cup'
  get 'Avalanche' => 'descriptions#Avalanche'
  get 'Dizzy Bat' => 'descriptions#Dizzy Bat'
  get 'Powerhour' => 'descriptions#Powerhour'
  get 'Never Have I Ever' => 'descriptions#Never Have I Ever'
  get 'Edward Fortyhands' => 'descriptions#Edward Fortyhands'
  get 'Horserace' => 'descriptions#Horserace'
  get 'Thumper' => 'descriptions#Thumper'
  get 'Three Man' => 'descriptions#Three Man'
  get 'Ride the Bus' => 'descriptions#Ride the Bus'
  get 'Speed Quarters' => 'descriptions#Speed Quarters'
  get 'Pyramid' => 'descriptions#Pyramid'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

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
end
