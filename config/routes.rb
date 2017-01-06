Rails.application.routes.draw do
  root to: "static_pages#root"

  namespace :api, defaults: { format: 'json' } do
    resource :session, only:[:new, :create, :destroy]

    resources :users, only:[:new, :create] do
      resources :spaces, only:[:index]
      resources :improvements, only:[:index]
    end

    resources :spaces do
      resources :space_views, only:[:index, :new, :create]
      resources :ownership
    end

    resources :space_views, only:[:show, :update, :destroy] do
      resources :improvements
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
