# == Schema Information
#
# Table name: building_visitors
#
#  id          :integer          not null, primary key
#  deleted_at  :datetime
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

class BuildingVisitor < ApplicationRecord
  include SoftDeletable
  
  belongs_to :building
  belongs_to :invitor, class_name: 'User', optional: true
  belongs_to :visitor, class_name: 'User'

  has_one :qrcode, as: :owner, class_name: 'Image', dependent: :destroy
end
