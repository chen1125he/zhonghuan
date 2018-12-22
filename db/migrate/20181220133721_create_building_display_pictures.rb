class CreateBuildingDisplayPictures < ActiveRecord::Migration[5.0]
  def change
    create_table :building_display_pictures do |t|
      t.references :building_display
      t.string :name
      t.timestamps
    end
  end
end
