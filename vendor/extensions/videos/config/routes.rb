Refinery::Core::Engine.routes.append do


  # Admin routes
  namespace :videos, :path => '' do
    namespace :admin, :path => 'refinery' do
      resources :videos, :except => :show do
        collection do
          put :homepaged
          post :update_positions
        end
      end
    end
  end

end
