# == Schema Information
#
# Table name: buildings
#
#  id                    :integer          not null, primary key
#  address               :string
#  base_count            :integer
#  car_position_count    :integer
#  cover_link            :string
#  decoration_standard   :string
#  deleted_at            :datetime
#  delivery_date         :date
#  developer             :string
#  disclaimer(免责条款)      :text
#  district              :string
#  green_rate            :string
#  latitude              :float
#  longitude             :float
#  name                  :string
#  opening_date          :date
#  phone                 :string
#  plot_ratio            :string
#  price_per_sqm         :integer
#  property_company      :string
#  property_fee_desc     :string
#  property_type         :string
#  property_year         :string
#  tags                  :string           default([]), is an Array
#  created_at            :datetime         not null
#  updated_at            :datetime         not null
#

FactoryGirl.define do
  factory :building do
    
  end
end
