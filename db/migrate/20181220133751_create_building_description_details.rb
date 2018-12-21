class CreateBuildingDescriptionDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :building_description_details do |t|
      t.references :building_description, index: true
      t.string :title
      t.text :desc
      t.timestamps
    end
  end
end
