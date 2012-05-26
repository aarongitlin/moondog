Refinery::PagesController.class_eval do
  before_filter :load_brewing_beers, :only => :home

  def load_brewing_beers
    @brewing_beers = Refinery::BrewingBeers::BrewingBeer.displayed
  end
end
