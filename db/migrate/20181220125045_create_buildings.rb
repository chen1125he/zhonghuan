class CreateBuildings < ActiveRecord::Migration[5.0]
  def change
    create_table :buildings do |t|
      t.integer :price_per_sqm
      t.string :name
      t.string :tags, array: true, default: []
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :developer
      t.string :property_company
      t.date :opening_date
      t.date :delivery_date
      t.string :property_type
      t.string :property_year
      t.integer :car_position_count
      t.string :decoration_standard
      t.string :green_rate
      t.string :plot_ratio
      t.string :property_fee_desc
      t.integer :base_count
      t.timestamps
    end
  end
end
