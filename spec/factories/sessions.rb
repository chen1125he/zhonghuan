# == Schema Information
#
# Table name: sessions
#
#  id          :integer          not null, primary key
#  expires_at  :datetime
#  session_key :string
#  token       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
# Indexes
#
#  index_sessions_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

FactoryGirl.define do
  factory :session do
    token "MyString"
    expires_at "2018-12-31 11:06:52"
    session_key "MyString"
    user nil
  end
end
