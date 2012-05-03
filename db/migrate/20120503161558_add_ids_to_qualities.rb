class AddIdsToQualities < ActiveRecord::Migration
  def change
    add_column :qualities, :sale_id, :integer
  end
end
