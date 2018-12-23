# == Schema Information
#
# Table name: weapp_settings
#
#  id                 :integer          not null, primary key
#  information_enable :boolean          default(TRUE)
#  share_content      :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#

FactoryGirl.define do
  factory :weapp_setting do
    
  end
end
