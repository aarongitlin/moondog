module Refinery
  module Portfolio
    module GalleriesHelper
      def gallery_variety_class(variety)
        variety.title.parameterize
      end

      def gallery_beer_variety_class(beer)
        gallery_variety_class(beer.parent)
      end
    end
  end
end
