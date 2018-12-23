# == Schema Information
#
# Table name: page_items
#
#  id                 :integer          not null, primary key
#  content            :text
#  image_content_type :string
#  image_file_name    :string
#  image_file_size    :bigint(8)
#  image_updated_at   :datetime
#  item_type          :string
#  link               :string
#  link_type          :string
#  position           :integer          default(0)
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  page_id            :integer
#
# Indexes
#
#  index_page_items_on_page_id  (page_id)
#

class PageItem < ApplicationRecord
  extend Enumerize

  belongs_to :page, optional: true

  enumerize :item_type, in: %w(content image), default: :content
  enumerize :link_type, in: %w(none page article), default: :none

  validates :link, presence: true, if: Proc.new{ |item| !item.link_type.none? }
  validates :image, presence: true, if: Proc.new{ |item| item.item_type.image? }
  validates :content, presence: true, if: Proc.new{ |item| item.item_type.content? }

  accepts_nested_attributes_for :image, allow_destroy: true

  def image_attributes=(attributes)
    image = Image.find(attributes[:id])
    self.image = image # Preferably finding posts should be scoped
    super(attributes)
  end
end
