# == Schema Information
#
# Table name: advisers
#
#  id         :integer          not null, primary key
#  desc       :text
#  level      :integer
#  mobile     :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Adviser < ApplicationRecord
  has_one :avatar, as: :owner, class_name: 'Image', dependent: :destroy

  accepts_nested_attributes_for :avatar, allow_destroy: true

  validates :avatar, presence: true
  validates :level, inclusion: 1..5, numericality: { only_integer: true }
  validates :mobile, presence: true, format: { with: /\A1\d{10}\z/ }
end
