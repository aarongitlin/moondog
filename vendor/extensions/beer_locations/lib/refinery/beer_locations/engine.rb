module Refinery
  module BeerLocations
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::BeerLocations

      engine_name :refinery_beer_locations

      initializer "register refinerycms_beer_locations plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "beer_locations"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.beer_locations_admin_beer_locations_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/beer_locations/beer_location',
            :title => 'name'
          }
          
        end
      end

      config.after_initialize do
        Refinery.register_extension(Refinery::BeerLocations)
      end
    end
  end
end
