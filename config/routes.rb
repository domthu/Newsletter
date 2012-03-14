Newsletter::Application.routes.draw do


  devise_for :user
  #devise_for :users
#      new_user_session GET    /users/sign_in(.:format)          {:action=>"new", :controller=>"devise/sessions"}
#          user_session POST   /users/sign_in(.:format)          {:action=>"create", :controller=>"devise/sessions"}
#  destroy_user_session GET    /users/sign_out(.:format)         {:action=>"destroy", :controller=>"devise/sessions"}
#         user_password POST   /users/password(.:format)         {:action=>"create", :controller=>"devise/passwords"}
#     new_user_password GET    /users/password/new(.:format)     {:action=>"new", :controller=>"devise/passwords"}
#    edit_user_password GET    /users/password/edit(.:format)    {:action=>"edit", :controller=>"devise/passwords"}
#         user_password PUT    /users/password(.:format)         {:action=>"update", :controller=>"devise/passwords"}
#     user_registration POST   /users(.:format)                  {:action=>"create", :controller=>"devise/registrations"}
# new_user_registration GET    /users/sign_up(.:format)          {:action=>"new", :controller=>"devise/registrations"}
#edit_user_registration GET    /users/edit(.:format)             {:action=>"edit", :controller=>"devise/registrations"}
#     user_registration PUT    /users(.:format)                  {:action=>"update", :controller=>"devise/registrations"}
#     user_registration DELETE /users(.:format)                  {:action=>"destroy", :controller=>"devise/registrations"}
#     user_confirmation POST   /users/confirmation(.:format)     {:action=>"create", :controller=>"devise/confirmations"}
# new_user_confirmation GET    /users/confirmation/new(.:format) {:action=>"new", :controller=>"devise/confirmations"}
#     user_confirmation GET    /users/confirmation(.:format)     {:action=>"show", :controller=>"devise/confirmations"}
#           user_unlock POST   /users/unlock(.:format)           {:action=>"create", :controller=>"devise/unlocks"}
#       new_user_unlock GET    /users/unlock/new(.:format)       {:action=>"new", :controller=>"devise/unlocks"}
#           user_unlock GET    /users/unlock(.:format)           {:action=>"show", :controller=>"devise/unlocks"}
#                  root        /(.:format)                       {:controller=>"home", :action=>"index"}

  resources :ruoli

  match '/contatti', :to => 'pages#contatti'
  match '/about',   :to => 'pages#about'
  root :to => 'pages#home'
  
  get "pages/about"

  get "pages/home"
  get "pages/contatti"
  resources :pages
  
  resources :utenti

  resources :spighe

  resources :sotto_categorie

  resources :sezioni

  resources :regioni_province

  resources :regioni

  resources :province

  resources :organismi_tipi

  resources :organismi_associati

  resources :organismi

  resources :gruppi_utenti_banners

  resources :gruppi_utenti

  resources :gruppi_banners

  resources :edizioni

  resources :contenuti

  resources :categorie

  resources :allegati
  

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
