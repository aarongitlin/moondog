module Refinery
  module BeerLocations
    class BeerLocationsController < ::ApplicationController

      before_filter :find_all_beer_locations
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @beer_location in the line below:
        present(@page)
      end

    protected

      def find_all_beer_locations
        @beer_locations = BeerLocation.order('position ASC')
        @beer_locations_json = @beer_locations.to_gmaps4rails do |beer_location, marker|
          marker.infowindow render_to_string(:partial => 'info_window', :locals => {:beer_location => beer_location})
					marker.picture({
		                       :picture => "/assets/moondog_icon.png", 
		                       :width => 30,
		                       :height => 30
		                     })
        end
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/beer_locations").first
      end

    end
  end
end
