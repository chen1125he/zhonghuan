class AddDistrictToBuilding < ActiveRecord::Migration[5.0]
  def change
    add_column :buildings, :district, :string
  end
end
