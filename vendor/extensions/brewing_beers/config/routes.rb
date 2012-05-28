Refinery::Core::Engine.routes.append do

  # Frontend routes
  namespace :brewing_beers do
    resources :brewing_beers, :path => '', :only => [:index, :show]
  end

  # Admin routes
  namespace :brewing_beers, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :brewing_beers, :except => :show do
        collection do
          post :update_positions
        end
      end
    end
  end

end
