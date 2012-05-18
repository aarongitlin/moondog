module Refinery
  module BeerLocations
    class BeerLocation < Refinery::Core::BaseModel
      self.table_name = 'refinery_beer_locations'      
    
      attr_accessible :name, :address, :latitude, :longitude, :position

      acts_as_indexed :fields => [:name, :address]

      validates :name, :presence => true, :uniqueness => true
              
    end
  end
end
