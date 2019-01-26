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
#  district            :string
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

FactoryGirl.define do
  factory :building do
    
  end
end
