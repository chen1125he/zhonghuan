class CreateWeappSettings < ActiveRecord::Migration[5.0]
  def change
    create_table :weapp_settings do |t|
      t.boolean :information_enable, default: true
      t.string :share_content
      t.timestamps
    end
  end
end
