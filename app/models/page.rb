# == Schema Information
#
# Table name: pages
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Page < ApplicationRecord
  has_many :page_items, -> { order('position ASC NULLS LAST') }, dependent: :destroy

  validates :name, presence: true

  accepts_nested_attributes_for :page_items, allow_destroy: true
end
