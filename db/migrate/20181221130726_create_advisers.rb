class CreateAdvisers < ActiveRecord::Migration[5.0]
  def change
    create_table :advisers do |t|
      t.string :name
      t.text :desc
      t.string :mobile
      t.integer :level
      t.timestamps
    end
  end
end
