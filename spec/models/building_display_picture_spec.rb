# == Schema Information
#
# Table name: building_display_pictures
#
#  id                  :integer          not null, primary key
#  name                :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  building_display_id :integer
#
# Indexes
#
#  index_building_display_pictures_on_building_display_id  (building_display_id)
#

require 'rails_helper'

RSpec.describe BuildingDisplayPicture, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
