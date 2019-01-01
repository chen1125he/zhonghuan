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

FactoryGirl.define do
  factory :adviser do
    
  end
end
