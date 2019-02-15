class AddSpecialTypeToImage < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :special_type, :string

    add_column :buildings, :phone, :string
  end
end
