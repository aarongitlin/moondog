module Refinery
  module BrewingBeers
    class BrewingBeer < Refinery::Core::BaseModel
      self.table_name = 'refinery_brewing_beers'      

      FIELD_LABELS = {:darkness => {0 => '0 Pretty light!', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9 Tar-black'},
                      :bitterness => {0 => '0 Mild', 1 => '1', 2 => '2', 3 => '3', 4 => '4', 5 => '5', 6 => '6', 7 => '7', 8 => '8', 9 => '9 Hoptastic'},
                      :abv => {0 => '0.5 - 1.5% de-alcoholised', 3 => '1.5 - 4% light', 6 => '4 - 6 % standard', 9 => '6+% alco'}}


      acts_as_indexed :fields => [:name, :description]

      attr_accessible :name, :description, :darkness, :bitterness, :abv, :is_displayed, :position

      validates :name, :presence => true, :uniqueness => true

      scope :displayed, where(:is_displayed => true)
              
    end
  end
end
