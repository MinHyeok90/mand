Rails.application.routes.draw do
  devise_for :users
  root 'home#index' 
  #핵심기능 : mandalart
  #read
  get 'home/index'
  get 'home/index_table'                                        #옛날버전 - 휴대폰에선 이것이 더 편할듯.
  get 'home/index_div'                                          #옛날버전
  get 'home/mylist'                                             #옛날버전
  get 'home/mylist_simple'                                      #자신이 작성한 만다라트를 둘러볼 수 있습니다.
  get 'home/mylist_simple/:mandal_id' => 'home#mylist_simple'   #자신이 작성한 만다라트 중 특정 하나를 선택해 우선 볼 수 있습니다.
  
  #write 
  get 'home/create'
  post 'home/write'
  get '/home/copy/:mandal_id' => 'home#copy'                    #타인이 작성한 만다라트를 복사해 자신의 list에 넣습니다.
  
  #update : mandalart
  get 'home/update/:mandal_id' => 'home#update'
  post 'home/realupdate'
  get 'home/expired/:mandal_id' => 'home#expired'               #만다라트 내 완료된 목표를 expired 모델에 저장합니다.
  get '/home/mylist/update_stat' => 'home#update_stat'          #만다라트 내 목표의 상태를 업데이트 합니다.
  
  #destroy : mandalart
  get 'home/remove/:mandal_id' => 'home#remove'                 #만다라트 삭제 : 관리자, 본인 외 삭제불능.(redirect_to)
  
  #부가기능1: 건의사항
  #read 
  get 'home/suggestion'
  #write
  post 'home/suggest'
  #remove
  get 'home/removesuggest/:sug_id' => 'home#removesuggest'
  
  # get '/home/fileout'
  
  #관리자 영역
  #admin
  get 'home/manager_page'
  #백업기능
  get 'home/json_upload' => 'home#manager_json_upload'                #만다라트를 json형태로 저장. user_id를 저장하므로 불완전
  get 'home/write_json_backup' => 'home#manager_write_json_backup'    #만다라트를 json형태로 저장. user_id를 저장하므로 불완전
  get 'home/read_json_backup' => 'home#manager_read_json_backup'      #json -> 만다라트로 복원. 만다라트 모델'만'복원
  get 'home/manager_mandaldown'                                       #json 다운로드.
  
  #관리기능 : 만다라트 보기 삭제
  get 'home/manager_view'
  get 'home/manager_mandal_remove/:mandal_id' => 'home#manager_mandal_remove'
  
  #실험용
  get '/home/test'
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
