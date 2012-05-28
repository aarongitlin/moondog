module Refinery
  module BrewingBeersHelper
    # Map model field to its display name
    def refinery_brewing_beer_field_name(field)
      {:darkness => 'Colour', :bitterness => 'Bitterness', :abv => 'ABV'}[field]
    end

    # Fetch the field label (eg. "pretty light!") to display for a particular beer & field
    def refinery_brewing_beer_field_label(beer, field)
      Refinery::BrewingBeers::BrewingBeer::FIELD_LABELS[field][beer[field]]
    end
  end
end
