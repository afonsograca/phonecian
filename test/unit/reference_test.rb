# == Schema Information
#
# Table name: references
#
#  id         :integer(4)      not null, primary key
#  author     :string(255)
#  publiser   :string(255)
#  title      :string(255)
#  year       :date
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class ReferenceTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
