# == Schema Information
#
# Table name: sliders
#
#  id                 :integer          not null, primary key
#  image_content_type :string
#  image_file_name    :string
#  image_file_size    :bigint(8)
#  image_updated_at   :datetime
#  link               :string
#  link_type          :string
#  name               :string
#  position           :integer          default(0)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Slider < ApplicationRecord
  extend Enumerize

  enumerize :link_type, in: %w(none page article), default: :none

  validates :link, presence: true, if: Proc.new{ |item| !item.link_type.none? }
  validates :image, presence: true

  has_one :image, as: :owner, class_name: 'Image', dependent: :destroy
  accepts_nested_attributes_for :image, allow_destroy: true

  def image_attributes=(attributes)
    image = Image.find(attributes[:id])
    self.image = image # Preferably finding posts should be scoped
    super(attributes)
  end
end
