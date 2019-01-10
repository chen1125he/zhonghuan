# == Schema Information
#
# Table name: users
#
#  id               :integer          not null, primary key
#  name(昵称)         :string
#  raw(原始认证信息)      :json
#  uid(微信用户的openid) :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

FactoryGirl.define do
  factory :user do
    uid "MyString"
    raw ""
    name "MyString"
  end
end
