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

FactoryGirl.define do
  factory :building_description do
    
  end
end
