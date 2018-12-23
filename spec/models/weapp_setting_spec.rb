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

require 'rails_helper'

RSpec.describe WeappSetting, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
