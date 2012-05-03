class AddIdsToSales < ActiveRecord::Migration
  def change
    add_column :sales, :commodity_id, :integer
    add_column :sales, :location_id, :integer
    add_column :sales, :market_type_id, :integer
    add_column :sales, :price_receipt_unit_id, :integer
    add_column :sales, :quality_id, :integer
    add_column :sales, :unit_id, :integer
  end
end
