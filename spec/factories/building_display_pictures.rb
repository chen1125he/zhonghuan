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

FactoryGirl.define do
  factory :building_display_picture do
    
  end
end
