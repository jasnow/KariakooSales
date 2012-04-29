class CreateCommodities < ActiveRecord::Migration
  def change
    create_table :commodities do |t|
      t.string :value

      t.timestamps
    end
  end
end
