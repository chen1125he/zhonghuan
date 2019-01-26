class CreateBuildingVisitors < ActiveRecord::Migration[5.0]
  def change
    create_table :building_visitors do |t|
      t.references :building, foreign_key: true
      t.references :visitor, foreign_key: { to_table: :users }
      t.references :invitor, index: true
      t.timestamps
    end
  end
end
