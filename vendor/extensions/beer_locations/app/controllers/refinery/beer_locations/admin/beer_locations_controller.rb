module Refinery
  module BeerLocations
    module Admin
      class BeerLocationsController < ::Refinery::AdminController
        before_filter :prepare_map_json, :only => [:new, :edit]

        crudify :'refinery/beer_locations/beer_location',
                :title_attribute => 'name', :xhr_paging => true

        def prepare_map_json
          @beer_location_json = @beer_location.to_gmaps4rails do |beer_location, marker|
            marker.json({:title => 'Drag to reposition', :draggable => true})
          end
        end
      end
    end
  end
end
