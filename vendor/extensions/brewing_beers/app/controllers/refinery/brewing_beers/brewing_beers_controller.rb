module Refinery
  module BrewingBeers
    class BrewingBeersController < ::ApplicationController

      before_filter :find_all_brewing_beers
      before_filter :find_page

      def index
        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @brewing_beer in the line below:
        present(@page)
      end

      def show
        @brewing_beer = BrewingBeer.find(params[:id])

        # you can use meta fields from your model instead (e.g. browser_title)
        # by swapping @page for @brewing_beer in the line below:
        present(@page)
      end

    protected

      def find_all_brewing_beers
        @brewing_beers = BrewingBeer.order('position ASC')
      end

      def find_page
        @page = ::Refinery::Page.where(:link_url => "/brewing_beers").first
      end

    end
  end
end
