class CreateBeerLocationsBeerLocations < ActiveRecord::Migration

  def up
    create_table :refinery_beer_locations do |t|
      t.string :name
      t.text :address
      t.float :latitude
      t.float :longitude
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-beer_locations"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/beer_locations/beer_locations"})
    end

    drop_table :refinery_beer_locations

  end

end
