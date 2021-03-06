Rails.application.routes.draw do

  get 'company/disclaimer', to: 'company#disclaimer'

  get 'company/news', to: 'company#news'

  get 'company/faqs', to: 'company#faqs'

  get 'company/privacy', to: 'company#privacy'

  get 'company/terms_conditions', to: 'company#terms_conditions'

  get 'company/corporate_responsibility', to: 'company#corporate_responsibility'

  get 'company/services', to: 'company#services'

  resources :cvs
  root 'pages#home'

  get  '/about',   to: 'pages#about'
  get  '/contact', to: 'pages#contact'

  devise_for :users, 
             :path => '',
             :path_names => {:sign_in => 'log_in', :sign_out => 'logout', :edit => 'profile'},
             :controllers => {:omniauth_callbacks => 'omniauth_callbacks',
                              :registrations => 'registrations'}



resources :users, only: [:show, :edit]
resources :jobs
resources :photos

resources :jobs do
  resources :japplications, only: [:create]
end






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
