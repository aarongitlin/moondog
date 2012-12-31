module Refinery
  module BrewingBeers
    module Admin
      class BrewingBeersController < ::Refinery::AdminController

        crudify :'refinery/brewing_beers/brewing_beer',
                :title_attribute => 'name', :xhr_paging => true

        def homepaged
          if params[:remove_button]
            BrewingBeer.where(:id => params[:brew_ids]).update_all(:is_displayed => false)
            redirect_to refinery.brewing_beers_admin_brewing_beers_path
            flash[:notice] = "Taken off the homepage!"
          else

            BrewingBeer.where(:id => params[:brew_ids]).update_all(:is_displayed => true)
            redirect_to refinery.brewing_beers_admin_brewing_beers_path
            flash[:notice] = "Put on the homepage!"
          end
		  
	    end
      end
    end
  end
end
