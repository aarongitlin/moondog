
FactoryGirl.define do
  factory :beer_location, :class => Refinery::BeerLocations::BeerLocation do
    sequence(:name) { |n| "refinery#{n}" }
  end
end

