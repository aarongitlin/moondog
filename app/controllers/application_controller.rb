class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :refinery_user?
  
  before_filter :load_brewing_beers
  before_filter :load_videos

  helper Spree::BaseHelper
  helper Spree::CheckoutHelper
  helper Spree::ProductsHelper
  helper Spree::TaxonsHelper

  def load_brewing_beers
    @brewing_beers = Refinery::BrewingBeers::BrewingBeer.displayed
  end
  

  def load_videos
    @videos = Refinery::Videos::Video.displayed
  end

end
