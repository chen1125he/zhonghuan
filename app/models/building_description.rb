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

class BuildingDescription < ApplicationRecord
  belongs_to :building, optional: true
  has_many :building_description_details

  accepts_nested_attributes_for :building_description_details, allow_destroy: true
end
