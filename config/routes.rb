Rails.application.routes.draw do
  
  devise_for :users
  root 'clients#index'


  # Routes for the Banker resource:
  # CREATE
  get('/bankers/new', { :controller => 'bankers', :action => 'new' })
  get('/create_banker', { :controller => 'bankers', :action => 'create' })

  # READ
  get('/bankers', { :controller => 'bankers', :action => 'index' })
  get('/bankers/:id', { :controller => 'bankers', :action => 'show' })

  # UPDATE
  get('/bankers/:id/edit', { :controller => 'bankers', :action => 'edit' })
  get('/update_banker/:id', { :controller => 'bankers', :action => 'update' })

  # DELETE
  get('/delete_banker/:id', { :controller => 'bankers', :action => 'destroy' })
  #------------------------------

  # Routes for the Marketer resource:
  # CREATE
  get('/marketers/new', { :controller => 'marketers', :action => 'new' })
  get('/create_marketer', { :controller => 'marketers', :action => 'create' })

  # READ
  get('/marketers', { :controller => 'marketers', :action => 'index' })
  get('/marketers/:id', { :controller => 'marketers', :action => 'show' })

  # UPDATE
  get('/marketers/:id/edit', { :controller => 'marketers', :action => 'edit' })
  get('/update_marketer/:id', { :controller => 'marketers', :action => 'update' })

  # DELETE
  get('/delete_marketer/:id', { :controller => 'marketers', :action => 'destroy' })
  #------------------------------

  # Routes for the Quote resource:
  # CREATE
  get('/quotes/new', { :controller => 'quotes', :action => 'new' })
  get('/create_quote', { :controller => 'quotes', :action => 'create' })

  # READ
  get('/quotes', { :controller => 'quotes', :action => 'index' })
  get('/quotes/:id', { :controller => 'quotes', :action => 'show' })

  # UPDATE
  get('/quotes/:id/edit', { :controller => 'quotes', :action => 'edit' })
  get('/update_quote/:id', { :controller => 'quotes', :action => 'update' })

  # DELETE
  get('/delete_quote/:id', { :controller => 'quotes', :action => 'destroy' })
  #------------------------------

  # Routes for the Loanterm resource:
  # CREATE
  get('/loanterms/:client_id/new', { :controller => 'loanterms', :action => 'new' })
  get('/create_loanterm', { :controller => 'loanterms', :action => 'create' })

  # READ
  get('/loanterms', { :controller => 'loanterms', :action => 'index' })
  get('/loanterms/:id', { :controller => 'loanterms', :action => 'show' })

  # UPDATE
  get('/loanterms/:id/edit', { :controller => 'loanterms', :action => 'edit' })
  get('/update_loanterm/:id', { :controller => 'loanterms', :action => 'update' })

  # DELETE
  get('/delete_loanterm/:id', { :controller => 'loanterms', :action => 'destroy' })
  #------------------------------

  # Routes for the Client resource:
  # CREATE
  get('/clients/new', { :controller => 'clients', :action => 'new' })
  get('/create_client', { :controller => 'clients', :action => 'create' })

  # READ
  get('/clients', { :controller => 'clients', :action => 'index' })
  get('/clients/:id', { :controller => 'clients', :action => 'show' })

  # UPDATE
  get('/clients/:id/edit', { :controller => 'clients', :action => 'edit' })
  get('/update_client/:id', { :controller => 'clients', :action => 'update' })

  # DELETE
  get('/delete_client/:id', { :controller => 'clients', :action => 'destroy' })
  #------------------------------

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
