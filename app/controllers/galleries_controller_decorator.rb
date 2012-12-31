module Refinery
  module Portfolio
    GalleriesController.class_eval do
      def show
        @gallery = Gallery.find(params[:id])

        # For the root (Beerfolio) gallery, get beer varieties (direct children)
        @varieties = @gallery.children if @gallery.parent.nil?

        # Show leaf node galleries (beers) instead of direct children (varieties)
        @galleries = @gallery.leaves

        @items = @gallery.items
        present(@page)
				

        render :action => "index"
      end
		
    end
		
  end
	
end
