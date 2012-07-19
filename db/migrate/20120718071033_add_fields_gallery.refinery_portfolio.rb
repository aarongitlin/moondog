class AddFieldsGallery < ActiveRecord::Migration
	def change
    change_table :refinery_portfolio_galleries do |t|
      t.text :hops, :malts, :yeasts, :other_stuffs
      t.integer :ABV, :IBU, :SRM, :degreesP
		end
	end
end