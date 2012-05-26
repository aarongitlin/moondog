module Refinery
  module BrewingBeers
    class BrewingBeer < Refinery::Core::BaseModel
      self.table_name = 'refinery_brewing_beers'      

      # TODO: Add proper labels
      DARKNESS_OPTIONS = ['0 Pretty light!', '1', '2', '3', '4', '5', '6', '7', '8', '9 Tar-black']
      BITTERNESS_OPTIONS = ['0 Mild', '1', '2', '3', '4', '5', '6', '7', '8', '9 Hoptastic']
      ABV_OPTIONS = ['0.5 - 1.5% de-alcoholised', '1.5 - 4% light', '4 - 6 % standard', '6+% alco']

      acts_as_indexed :fields => [:name, :description]

      attr_accessible :name, :description, :darkness, :bitterness, :abv, :is_displayed, :position

      validates :name, :presence => true, :uniqueness => true
              
    end
  end
end
