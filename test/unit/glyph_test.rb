# == Schema Information
#
# Table name: glyphs
#
#  id          :integer(4)      not null, primary key
#  image       :string(255)
#  beginPeriod :datetime
#  endPeriod   :datetime
#  created_at  :datetime
#  updated_at  :datetime
#

require 'test_helper'

class GlyphTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
