class AddDisclaimerToBuildings < ActiveRecord::Migration[5.0]
  def change
    add_column :buildings, :disclaimer, :text, comment: '免责条款'
  end
end
