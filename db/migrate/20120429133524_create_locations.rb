class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name
      t.string :town
      t.string :ward
      t.string :district
      t.string :region

      t.timestamps
    end
  end
end
