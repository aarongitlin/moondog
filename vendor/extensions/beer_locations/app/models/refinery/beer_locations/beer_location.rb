module Refinery
  module BeerLocations
    class BeerLocation < Refinery::Core::BaseModel
      self.table_name = 'refinery_beer_locations'      
    
      acts_as_indexed :fields => [:name, :address]

      validates :name, :presence => true, :uniqueness => true
              
    end
  end
end
