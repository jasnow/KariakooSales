class AddIdsToCommodities < ActiveRecord::Migration
  def change
    add_column :commodities, :sale_id, :integer
  end
end
