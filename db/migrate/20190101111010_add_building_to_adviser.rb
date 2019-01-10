class AddBuildingToAdviser < ActiveRecord::Migration[5.0]
  def change
    add_reference :advisers, :building
  end
end
