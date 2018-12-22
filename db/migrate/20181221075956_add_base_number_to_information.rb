class AddBaseNumberToInformation < ActiveRecord::Migration[5.0]
  def change
    add_column :informations, :base_number, :integer, default: 0
  end
end
