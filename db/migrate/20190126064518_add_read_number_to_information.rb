class AddReadNumberToInformation < ActiveRecord::Migration[5.0]
  def change
    add_column :informations, :read_number, :integer, default: 0
  end
end
