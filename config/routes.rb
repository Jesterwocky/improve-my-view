Rails.application.routes.draw do
  root to: "static_pages#root"

  namespace :api, defaults: { format: 'json' } do

    resource :session, only:[:create],
      path: 'login'
    resource :session, only:[:delete],
      path: 'logout'

    resources :users, only:[:create],
      path: 'signup'
    resources :users, only:[:show] do
      resources :spaces, only:[:index, :create]
      resources :improvements, only:[:index]
    end

    resources :spaces, only:[:show, :update, :delete] do
      resources :space_views, except:[:new, :edit], shallow: true
      resources :ownership, except:[:new, :edit, :show, :delete], shallow: true
    end

    # Using "spaces: shallow" allows you to have only the spaces resources
    # definition above, instead of the two definitions below.
    #
    # resources :spaces, only:[:show, :update, :delete] do
    #   resources :space_views, only:[:index, :new, :create]
    #   resources :ownership
    # end
    #
    # resources :space_views, only:[:show, :update, :delete] do
    #   resources :improvements
    # end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
