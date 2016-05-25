Rails.application.routes.draw do
  devise_for :users
  root 'home#index' 
  get 'home/index'
  get 'home/index_table'
  get 'home/index_div'

  get 'home/create'
  post 'home/write'

  get 'home/update/:mandal_id' => 'home#update'
  post 'home/realupdate'

  get 'home/remove/:mandal_id' => 'home#remove'
  get 'home/mylist'
  get 'home/mylist_simple'
  
  get 'home/suggestion'
  post 'home/suggest'
  get 'home/removesuggest/:sug_id' => 'home#removesuggest'
  
  get '/home/mylist/update_stat' => 'home#update_stat'
  get '/home/test'
  
  get '/home/copy/:mandal_id' => 'home#copy'
  get '/home/fileout'
  
  #admin
  get 'home/manager_page'
  get 'home/json_upload' => 'home#manager_json_upload'
  get 'home/write_json_backup' => 'home#manager_write_json_backup'
  get 'home/read_json_backup' => 'home#manager_read_json_backup'
  get 'home/manager_mandaldown'
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
