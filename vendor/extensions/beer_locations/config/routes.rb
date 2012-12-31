Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :beer_locations do
    resources :beer_locations, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :beer_locations, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :beer_locations, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
