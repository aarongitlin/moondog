module Refinery
  module BeerLocations
    class BeerLocation < Refinery::Core::BaseModel
      self.table_name = 'refinery_beer_locations'      

      attr_accessible :name, :address, :latitude, :longitude, :position

      acts_as_indexed :fields => [:name, :address]
      acts_as_gmappable :address => :address, :normalized_address => :address, :process_geocoding => false

      validates :name, :presence => true, :uniqueness => true
    end
  end
end
