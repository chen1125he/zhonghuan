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

require 'rails_helper'

RSpec.describe Session, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
