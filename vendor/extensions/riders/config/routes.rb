Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :riders do
    resources :riders, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :riders, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :riders, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
