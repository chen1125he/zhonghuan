class AddDeletedAtToBuilding < ActiveRecord::Migration[5.0]
  def change
    add_column :buildings, :deleted_at, :datetime

    add_column :building_visitors, :deleted_at, :datetime
  end
end
