class CreatePriceReceiptUnits < ActiveRecord::Migration
  def change
    create_table :price_receipt_units do |t|
      t.string :value

      t.timestamps
    end
  end
end
