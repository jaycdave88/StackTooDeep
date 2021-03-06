Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  root 'questions#index'
  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  resources :users
  get '/users/:id' => 'users#show', as: :show_user

  resources :sessions, only: [:new, :create, :show]
  delete '/sessions/:id' => 'sessions#destroy', as: :delete_session

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # post 'question/:question_id/answers' => ''
  # post 'answer/:id' => 'question#create_answer'

  # Example resource route (maps HTTP verbs to controller actions automatically):
  resources :answers

  #   resources :products
  resources :questions
  get '/questions/:id' => 'questions#show', as: :show_question

  post '/vote/:answer_id/:vote_value' => 'answers#vote'
  

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
