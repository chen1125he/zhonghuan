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

class BuildingDisplay < ApplicationRecord
  belongs_to :building, optional: true
  has_many :building_display_pictures

  accepts_nested_attributes_for :building_display_pictures, allow_destroy: true
end
