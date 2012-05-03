class AddIdsToUnits < ActiveRecord::Migration
  def change
    add_column :units, :sale_id, :integer
  end
end
