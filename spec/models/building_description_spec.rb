# == Schema Information
#
# Table name: building_descriptions
#
#  id          :integer          not null, primary key
#  sub_desc    :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  building_id :integer
#
# Indexes
#
#  index_building_descriptions_on_building_id  (building_id)
#

require 'rails_helper'

RSpec.describe BuildingDescription, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
