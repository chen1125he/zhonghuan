# == Schema Information
#
# Table name: buildings
#
#  id                  :integer          not null, primary key
#  address             :string
#  base_count          :integer
#  car_position_count  :integer
#  decoration_standard :string
#  delivery_date       :date
#  developer           :string
#  green_rate          :string
#  latitude            :float
#  longitude           :float
#  name                :string
#  opening_date        :date
#  plot_ratio          :string
#  price_per_sqm       :integer
#  property_company    :string
#  property_fee_desc   :string
#  property_type       :string
#  property_year       :string
#  tags                :string           default([]), is an Array
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Building < ApplicationRecord
  has_one :cover, as: :owner, class_name: 'Image'
  has_many :building_displays, dependent: :destroy
  has_many :building_descriptions, dependent: :destroy

  validates :name, presence: true
  validates :cover, presence: true

  accepts_nested_attributes_for :cover, allow_destroy: true
  accepts_nested_attributes_for :building_displays, allow_destroy: true
  accepts_nested_attributes_for :building_descriptions, allow_destroy: true

  def cover_attributes=(attributes)
    image = Image.find(attributes[:id])
    self.cover = image # Preferably finding posts should be scoped
    super(attributes)
  end
end
