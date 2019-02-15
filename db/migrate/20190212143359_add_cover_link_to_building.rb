class AddCoverLinkToBuilding < ActiveRecord::Migration[5.0]
  def change
    add_column :buildings, :cover_link, :string
  end
end
