class AddIdsToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :sale_id, :integer
  end
end
