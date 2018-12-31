class CreateSessions < ActiveRecord::Migration[5.0]
  def change
    create_table :sessions do |t|
      t.string :token
      t.datetime :expires_at
      t.string :session_key
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
