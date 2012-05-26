module Refinery
  module BrewingBeers
    class BrewingBeer < Refinery::Core::BaseModel
      self.table_name = 'refinery_brewing_beers'      

      acts_as_indexed :fields => [:name, :description]

      validates :name, :presence => true, :uniqueness => true
              
    end
  end
end
