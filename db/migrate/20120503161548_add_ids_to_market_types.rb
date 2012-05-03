class AddIdsToMarketTypes < ActiveRecord::Migration
  def change
    add_column :market_types, :sale_id, :integer
  end
end
