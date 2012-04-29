class CreateMarketTypes < ActiveRecord::Migration
  def change
    create_table :market_types do |t|
      t.string :value

      t.timestamps
    end
  end
end
