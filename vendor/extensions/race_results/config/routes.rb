Refinery::Core::Engine.routes.draw do

  # Frontend routes
  namespace :race_results do
    resources :race_results, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :race_results, :path => '' do
    namespace :admin, :path => Refinery::Core.backend_route do
      resources :race_results, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
