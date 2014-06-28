# -*- encoding : utf-8 -*-
Dake::Application.routes.draw do




  get "vehicle_reminds/index"

  resources :bugs


  namespace :admin do
    resources :passenger_records do
      collection do
        get :choose_vehicle
      end
      member do
        get :print
      end
    end
    resources :item_records do
      collection do
        get :vehicle_item_records
      end
    end

    resources :items do
      resources :item_records
    end

    resources :drivers
    resources :vehicle_views, :only => [:index]
    resources :vehicles do
      resources :vehicle_reminds
    end
    resources :reminds
    resources :reports
    resources :users
    resources :pages
    resources :locations
    resources :routes
    resources :messages
    resources :huozhans
    resources :shippings
    resources :ship_ins do
      member do
        get :print
        put :deliver
        put :pay
        put :daishouhuokuan
      end
    end
    resources :ship_outs do
      member do
        get :print
        put :fangkuan
      end
    end
    resources :huoyun_routes
    resources :cargo_ins do
      member do
        get :print
        put :reach
      end
    end
    resources :cargos do
      member do
        get :print
      end
    end
    resources :cargo_outs do
      member do
        get :print
      end
    end
    resources :reasons do
      member do
        get :detail_reason
      end
    end
    resources :out_reasons
    resources :balances do
      resources :balance_details
      put :audit
      collection do
        get :vehicle_balances
      end
    end
    resources :in_balances do
      put :audit
      collection do
        get :vehicle_in_balances
      end

    end

    get "dashboard" => "base#dashboard"
    get "configuration" => "base#configuration"
  end

  devise_for :users


  get "welcome/index"
  get "welcome/about"
  get "welcome/contact"
  get "welcome/job"
  get "welcome/links"
  get "welcome/news"
  get "welcome/term"
  get "welcome/dashboard"

  resources :foos

  match "about" => "welcome#about"
  match "team" => "welcome#team"
  match "contact" => "welcome#contact"
  match "jobs" => "welcome#jobs"
  match "sign_as" => "welcome#sign_as"
  match "routes" => "welcome#routes"
  match "huoyun_routes" => "welcome#huoyun_routes"
  match "change" => "admin/users#password"
  match "change_password" => "admin/users#change_password"


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
  root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  match ':controller(/:action(/:id))(.:format)'
end
