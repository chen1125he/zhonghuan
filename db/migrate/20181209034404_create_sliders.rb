class CreateSliders < ActiveRecord::Migration[5.2]
  def change
    create_table :sliders do |t|
      t.string :name
      t.string :link_type
      t.string :link
      t.attachment :image
      t.integer :position, default: 0
      t.timestamps
    end
  end
end
