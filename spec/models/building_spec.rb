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

require 'rails_helper'

RSpec.describe Building, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
