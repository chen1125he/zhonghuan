# == Schema Information
#
# Table name: building_description_details
#
#  id                      :integer          not null, primary key
#  desc                    :text
#  title                   :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  building_description_id :integer
#
# Indexes
#
#  index_building_description_details_on_building_description_id  (building_description_id)
#

class BuildingDescriptionDetail < ApplicationRecord
  belongs_to :building_description, optional: true
end
