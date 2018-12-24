# == Schema Information
#
# Table name: weapp_settings
#
#  id                 :integer          not null, primary key
#  information_enable :boolean          default(TRUE)
#  share_content      :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class WeappSetting < ApplicationRecord
  has_one :share_picture, as: :owner, class_name: 'Image', dependent: :destroy
  accepts_nested_attributes_for :share_picture, allow_destroy: true

  def share_picture_attributes=(attributes)
    image = Image.find(attributes[:id])
    self.share_picture = image # Preferably finding posts should be scoped
    super(attributes)
  end
end
