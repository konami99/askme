Rails.application.routes.draw do
  resources :question_attributes

  resources :liked_questions

  resources :liked_answers

  #get 'sessions/new'

  #get 'sessions/create'

  #get 'sessions/destroy'

  resources :answers do
    resources :answer_attributes, only: [:update, :destroy]
  end

  resources :questions

  resources :users

  post 'signup' => 'users#create'
  post 'signin' => 'sessions#create'
  get 'logout' => 'sessions#destroy'
  get 'signin' => 'users#signin', as: 'signin_page'

  post 'questions/:id/answers' => 'answers#create', as: :answer_a_question

  post '/questions/:question_id/answers/:answer_id/selectAsBestAnswer' => 'answers#selectAsBestAnswer', as: :select_as_best_answer

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'welcome#index'

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
