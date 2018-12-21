class CreateBuildingDescriptions < ActiveRecord::Migration[5.0]
  def change
    create_table :building_descriptions do |t|
      t.references :building, index: true
      t.text :sub_desc
      t.timestamps
    end
  end
end
