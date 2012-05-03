class AddIdsToPriceReceiptUnits < ActiveRecord::Migration
  def change
    add_column :price_receipt_units, :sale_id, :integer
  end
end
