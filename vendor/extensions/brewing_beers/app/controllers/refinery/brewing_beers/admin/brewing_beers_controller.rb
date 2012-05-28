module Refinery
  module BrewingBeers
    module Admin
      class BrewingBeersController < ::Refinery::AdminController

        crudify :'refinery/brewing_beers/brewing_beer',
                :title_attribute => 'name', :xhr_paging => true

      end
    end
  end
end
