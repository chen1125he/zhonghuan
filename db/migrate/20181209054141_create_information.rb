class CreateInformation < ActiveRecord::Migration[5.0]
  def change
    create_table :informations do |t|
      t.string :title
      t.string :link_type
      t.string :link
      t.attachment :image
      t.text :desc
      t.integer :position, default: 0
      t.datetime :public_at
      t.timestamps
    end
  end
end
