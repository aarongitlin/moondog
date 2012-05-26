module Refinery
  module BrewingBeers
    class Engine < Rails::Engine
      include Refinery::Engine
      isolate_namespace Refinery::BrewingBeers

      engine_name :refinery_brewing_beers

      initializer "register refinerycms_brewing_beers plugin" do
        Refinery::Plugin.register do |plugin|
          plugin.name = "brewing_beers"
          plugin.url = proc { Refinery::Core::Engine.routes.url_helpers.brewing_beers_admin_brewing_beers_path }
          plugin.pathname = root
          plugin.activity = {
            :class_name => :'refinery/brewing_beers/brewing_beer',
            :title => 'name'
          }
          
        end
      end

      config.to_prepare do
        ::ApplicationController.helper(BrewingBeersHelper)
      end
      config.after_initialize do
        Refinery.register_extension(Refinery::BrewingBeers)
      end
    end
  end
end
