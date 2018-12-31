class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :uid, comment: '微信用户的openid'
      t.json :raw, comment: '原始认证信息'
      t.string :name, comment: '昵称'

      t.timestamps
    end
  end
end
