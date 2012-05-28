class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :load_brewing_beers

  def load_brewing_beers
    @brewing_beers = Refinery::BrewingBeers::BrewingBeer.displayed
  end

end
