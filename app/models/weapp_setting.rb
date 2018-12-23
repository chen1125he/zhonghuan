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
  has_one :image, as: :owner, class_name: 'Image', dependent: :destroy
  accepts_nested_attributes_for :image, allow_destroy: true

  def image_attributes=(attributes)
    image = Image.find(attributes[:id])
    self.image = image # Preferably finding posts should be scoped
    super(attributes)
  end
end
