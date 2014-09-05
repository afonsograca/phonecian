# == Schema Information
#
# Table name: characters
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  parent     :integer(4)
#  script     :integer(4)
#  glyph      :integer(4)
#  soundValue :integer(4)
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class CharacterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
