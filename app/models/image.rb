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
#  special_type      :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  owner_id          :integer
#
# Indexes
#
#  index_images_on_owner_type_and_owner_id  (owner_type,owner_id)
#

class Image < ApplicationRecord
  belongs_to :owner, polymorphic: true, optional: true, touch: true

  has_attached_file :file, {
    path: ':rails_root/public/uploads/:class/:attachment/:id_partition/:style/:filename',
    url: "/uploads/:class/:attachment/:id_partition/:style/:filename"
  }
  validates_attachment_content_type :file, content_type: /\Aimage\/.*\z/
  validates :file, attachment_presence: true
end
