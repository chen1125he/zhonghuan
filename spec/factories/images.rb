# == Schema Information
#
# Table name: images
#
#  id                :integer          not null, primary key
#  file_content_type :string
#  file_file_name    :string
#  file_file_size    :bigint(8)
#  file_updated_at   :datetime
#  owner_type        :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  owner_id          :integer
#
# Indexes
#
#  index_images_on_owner_type_and_owner_id  (owner_type,owner_id)
#

FactoryGirl.define do
  factory :image do
    
  end
end
