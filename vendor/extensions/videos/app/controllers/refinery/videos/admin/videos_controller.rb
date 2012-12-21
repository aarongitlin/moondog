module Refinery
  module Videos
    module Admin
      class VideosController < ::Refinery::AdminController

                crudify :'refinery/videos/video', :xhr_paging => true

        
        def homepaged
          if params[:remove_button]
            Video.where(:id => params[:video_ids]).update_all(:homepage => false)
            redirect_to refinery.videos_admin_videos_path
            flash[:notice] = "Taken off the homepage!"
          else

            Video.where(:id => params[:video_ids]).update_all(:homepage => true)
            redirect_to refinery.videos_admin_videos_path
            flash[:notice] = "Put on the homepage!"
          end

        end

      end
    end
  end
end
