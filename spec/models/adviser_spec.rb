# == Schema Information
#
# Table name: advisers
#
#  id         :integer          not null, primary key
#  desc       :text
#  level      :integer
#  mobile     :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Adviser, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
