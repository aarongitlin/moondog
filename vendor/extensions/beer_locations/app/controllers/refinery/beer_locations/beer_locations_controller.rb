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
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/beer_locations").first
      end

    end
  end
end
