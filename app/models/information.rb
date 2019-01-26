# == Schema Information
#
# Table name: informations
#
#  id                 :integer          not null, primary key
#  base_number        :integer          default(0)
#  desc               :text
#  image_content_type :string
#  image_file_name    :string
#  image_file_size    :bigint(8)
#  image_updated_at   :datetime
#  link               :string
#  link_type          :string
#  position           :integer          default(0)
#  public_at          :datetime
#  read_number        :integer          default(0)
#  title              :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Information < ApplicationRecord
  self.table_name = :informations
  extend Enumerize

  enumerize :link_type, in: %w(page article), default: :article

  # has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  # validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates :title, presence: true
  validates :link_type, presence: true
  validates :link, presence: true
  validates :public_at, presence: true
  # validates :image, attachment_presence: true

  has_one :image, as: :owner, class_name: 'Image', dependent: :destroy
  accepts_nested_attributes_for :image, allow_destroy: true

  def image_attributes=(attributes)
    image = Image.find(attributes[:id])
    self.image = image # Preferably finding posts should be scoped
    super(attributes)
  end
end
