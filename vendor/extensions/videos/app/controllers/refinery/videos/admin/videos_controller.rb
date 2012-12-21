module Refinery
  module Videos
    module Admin
      class VideosController < ::Refinery::AdminController

        crudify :'refinery/videos/video', :xhr_paging => true
        

        def update_all
          Video.update_all :homepage => true
          redirect_to 'refinery/videos/admin/videos'
          flash[:notice] = "All Videos updated, great job!"

        end
        
        
      end
    end
  end
end
