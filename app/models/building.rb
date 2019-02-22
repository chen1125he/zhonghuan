# == Schema Information
#
# Table name: buildings
#
#  id                  :integer          not null, primary key
#  address             :string
#  base_count          :integer
#  car_position_count  :integer
#  cover_link          :string
#  decoration_standard :string
#  deleted_at          :datetime
#  delivery_date       :date
#  developer           :string
#  district            :string
#  green_rate          :string
#  latitude            :float
#  longitude           :float
#  name                :string
#  opening_date        :date
#  phone               :string
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
  include SoftDeletable
  include GeographicalAddress

  has_one :cover, -> { where(special_type: nil) }, as: :owner, class_name: 'Image'
  has_one :poster, -> { where(special_type: 'BuildingPoster') }, as: :owner, class_name: 'Image'
  has_many :building_displays, dependent: :destroy
  has_one :building_description, dependent: :destroy
  has_many :advisers, dependent: :nullify
  has_many :building_visitors, -> { order('building_visitors.created_at DESC') }, dependent: :destroy
  has_many :without_invitor_building_visitors, -> { where('building_visitors.invitor_id' => nil).order('building_visitors.created_at DESC') }, class_name: 'BuildingVisitor'
  has_many :assigned_building_visitors, -> { joins('INNER JOIN users ON users.id = building_visitors.visitor_id').where('users.assigned' => true).order('building_visitors.created_at DESC') }, dependent: :destroy, class_name: 'BuildingVisitor'
  has_many :assigned_without_invitor_building_visitors, -> { joins('INNER JOIN users ON users.id = building_visitors.visitor_id').where('users.assigned' => true).where('building_visitors.invitor_id' => nil).order('building_visitors.created_at DESC') }, class_name: 'BuildingVisitor'

  validates :name, presence: true
  validates :cover, presence: true
  validates :poster, presence: true

  accepts_nested_attributes_for :cover, allow_destroy: true
  accepts_nested_attributes_for :poster, allow_destroy: true
  accepts_nested_attributes_for :building_displays, allow_destroy: true
  accepts_nested_attributes_for :building_description, allow_destroy: true

  address_methods :address

  def cover_attributes=(attributes)
    image = Image.find(attributes[:id])
    self.cover = image # Preferably finding posts should be scoped
    super(attributes)
  end

  def poster_attributes=(attributes)
    image = Image.find(attributes[:id])
    image.special_type = 'BuildingPoster'
    self.poster = image # Preferably finding posts should be scoped
    super(attributes)
  end
end
