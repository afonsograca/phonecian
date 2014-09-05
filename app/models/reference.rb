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

class Reference < ActiveRecord::Base
  belongs_to :ref, :polymorphic => true
end
