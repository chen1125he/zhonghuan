# == Schema Information
#
# Table name: building_displays
#
#  id          :integer          not null, primary key
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  building_id :integer
#
# Indexes
#
#  index_building_displays_on_building_id  (building_id)
#

require 'rails_helper'

RSpec.describe BuildingDisplay, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
