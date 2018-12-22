class CreatePageItems < ActiveRecord::Migration[5.0]
  def change
    create_table :page_items do |t|
      t.references :page
      t.string :item_type
      t.string :link_type
      t.string :link
      t.attachment :image
      t.text :content
      t.integer :position, default: 0
      t.timestamps
    end
  end
end
