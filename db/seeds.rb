if Spree::Country.find_by_name 'Australia'
  puts "[db:seed] Skipping spree"
else
  Spree::Core::Engine.load_seed if defined?(Spree::Core)
  Spree::Auth::Engine.load_seed if defined?(Spree::Auth)
end


# -- Refinery engines
Refinery::Pages::Engine.load_seed
Refinery::Blog::Engine.load_seed
Refinery::Portfolio::Engine.load_seed
Refinery::Inquiries::Engine.load_seed
Refinery::BeerLocations::Engine.load_seed
