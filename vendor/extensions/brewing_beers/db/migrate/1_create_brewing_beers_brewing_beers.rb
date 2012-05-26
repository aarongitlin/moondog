class CreateBrewingBeersBrewingBeers < ActiveRecord::Migration

  def up
    create_table :refinery_brewing_beers do |t|
      t.string :name
      t.text :description
      t.integer :darkness
      t.integer :bitterness
      t.float :abv
      t.boolean :is_displayed
      t.integer :position

      t.timestamps
    end

  end

  def down
    if defined?(::Refinery::UserPlugin)
      ::Refinery::UserPlugin.destroy_all({:name => "refinerycms-brewing_beers"})
    end

    if defined?(::Refinery::Page)
      ::Refinery::Page.delete_all({:link_url => "/brewing_beers/brewing_beers"})
    end

    drop_table :refinery_brewing_beers

  end

end
