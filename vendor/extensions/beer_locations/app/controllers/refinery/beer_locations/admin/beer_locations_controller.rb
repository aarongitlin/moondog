module Refinery
  module BeerLocations
    module Admin
      class BeerLocationsController < ::Refinery::AdminController

        crudify :'refinery/beer_locations/beer_location',
                :title_attribute => 'name', :xhr_paging => true

      end
    end
  end
end
