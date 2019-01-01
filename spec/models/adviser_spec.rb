# == Schema Information
#
# Table name: advisers
#
#  id          :integer          not null, primary key
#  desc        :text
#  level       :integer
#  mobile      :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  building_id :integer
#
# Indexes
#
#  index_advisers_on_building_id  (building_id)
#

require 'rails_helper'

RSpec.describe Adviser, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
