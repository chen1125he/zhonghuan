# == Schema Information
#
# Table name: building_display_pictures
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class BuildingDisplayPicture < ApplicationRecord
  belongs_to :building_display, optional: true
  has_many :pictures, as: :owner, class_name: 'Image'

  accepts_nested_attributes_for :pictures, allow_destroy: true
end
