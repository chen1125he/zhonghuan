class AddAssignedToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :assigned, :boolean, default: false, comment: '是否已经授权个人信息'
  end
end
