class CreateSales < ActiveRecord::Migration
  def change
    create_table :sales do |t|
      t.string :farmer_name
      t.date :sale_date
      t.string :market_type
      t.string :location
      t.integer :volume
      t.string :unit
      t.string :quality
      t.string :commodity
      t.integer :price_received
      t.string :price_receiptUnit

      t.timestamps
    end
  end
end
