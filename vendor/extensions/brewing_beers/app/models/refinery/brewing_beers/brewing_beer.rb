module Refinery
  module BrewingBeers
    class BrewingBeer < Refinery::Core::BaseModel
      self.table_name = 'refinery_brewing_beers'      

      FIELD_LABELS = {:darkness => {0 => '2 SRM', 1 => '8 SRM', 2 => '15 SRM', 4 => '20 SRM', 5 => '25 SRM', 6 => '30 SRM', 7 => '35 SRM', 8 => '45 SRM', 9 => '55 SRM', 10 => '60+ SRM'},
                      :abv => {0 => '0.5-2%', 1 => '2-4% light', 2 => '4-6% standard', 3 => '6-7%', 4 => '7-8%', 5 => '8-9%', 6=> '9-10%', 7 => '10-11%', 8 => '11-12%', 8.5 => '12-13%', 9 => '13-14%', 9.5 => '14-15%', 10 => 'over 15%'}}


      acts_as_indexed :fields => [:name, :description]

      attr_accessible :name, :description, :darkness, :bitterness, :abv, :is_displayed, :position

      validates :name, :presence => true, :uniqueness => true

      scope :displayed, where(:is_displayed => true)
              
    end
  end
end
