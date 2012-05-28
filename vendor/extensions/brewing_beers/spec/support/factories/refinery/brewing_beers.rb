
FactoryGirl.define do
  factory :brewing_beer, :class => Refinery::BrewingBeers::BrewingBeer do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

