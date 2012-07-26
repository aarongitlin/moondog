module Refinery
  module BrewingBeers
    class BrewingBeer < Refinery::Core::BaseModel
      self.table_name = 'refinery_brewing_beers'      

      FIELD_LABELS = {:darkness => {0 => 'Pale lager', 1 => 'German Pilsener', 2 => 'Pilsener Urquell', 4 => 'Weissbier', 5 => 'Bass pale ale', 6 => 'Dark lager', 7 => 'Porter', 8 => 'Stout', 9 => 'Imperial stout'},
                      :abv => {0 => '0.5-2%', 1 => '2-4% light', 2 => '4-6% standard', 3 => '6-7%', 4 => '7-8%', 5 => '8-9%', 6=> '9-10%', 7 => '10-11%', 8 => '11-12%', 8.5 => '12-13%', 9 => '13-14%', 9.5 => '14-15%', 10 => 'over 15%'}}


      acts_as_indexed :fields => [:name, :description]

      attr_accessible :name, :description, :darkness, :bitterness, :abv, :is_displayed, :position

      validates :name, :presence => true, :uniqueness => true

      scope :displayed, where(:is_displayed => true)
              
    end
  end
end
