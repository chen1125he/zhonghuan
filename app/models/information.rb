# == Schema Information
#
# Table name: information
#
#  id                 :bigint(8)        not null, primary key
#  title              :string
#  link_type          :string
#  link               :string
#  image_file_name    :string
#  image_content_type :string
#  image_file_size    :integer
#  image_updated_at   :datetime
#  desc               :text
#  position           :integer          default(0)
#  public_at          :datetime
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

class Information < ApplicationRecord
  extend Enumerize

  enumerize :link_type, in: %w(page article), default: :article

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
  validates :title, presence: true
  validates :link_type, presence: true
  validates :link, presence: true
  validates :public_at, presence: true
  validates :image, attachment_presence: true
end
