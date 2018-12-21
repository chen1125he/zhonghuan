class CreateBuildingDisplays < ActiveRecord::Migration[5.0]
  def change
    create_table :building_displays do |t|
      t.references :building, index: true
      t.string :name
      t.timestamps
    end
  end
end
