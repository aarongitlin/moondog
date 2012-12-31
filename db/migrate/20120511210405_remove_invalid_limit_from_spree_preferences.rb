class RemoveInvalidLimitFromSpreePreferences < ActiveRecord::Migration
  def change
    change_column :spree_preferences, :value, :string, :limit => 255
  end
end
