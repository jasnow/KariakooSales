class CreateUnits < ActiveRecord::Migration
  def change
    create_table :units do |t|
      t.string :value

      t.timestamps
    end
  end
end
