module Refinery
  module Portfolio
    GalleriesController.class_eval do
      def show
        @gallery = Gallery.find(params[:id])

        # Show leaf node galleries instead of direct children
        @galleries = @gallery.leaves

        @items = @gallery.items
        present(@page)

        render :action => "index"
      end
    end
  end
end
