# == Schema Information
#
# Table name: building_visitors
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  building_id :integer
#  invitor_id  :integer
#  visitor_id  :integer
#
# Indexes
#
#  index_building_visitors_on_building_id  (building_id)
#  index_building_visitors_on_invitor_id   (invitor_id)
#  index_building_visitors_on_visitor_id   (visitor_id)
#
# Foreign Keys
#
#  fk_rails_...  (building_id => buildings.id)
#  fk_rails_...  (visitor_id => users.id)
#

FactoryGirl.define do
  factory :building_visitor do
    
  end
end
