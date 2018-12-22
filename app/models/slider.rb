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

  validates :name, presence: true

  enumerize :link_type, in: %w(none page article), default: :none

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates :link, presence: true, if: Proc.new{ |item| !item.link_type.none? }
  validates :image, attachment_presence: true
end
