# == Schema Information
#
# Table name: scripts
#
#  id         :integer(4)      not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  name       :string(255)
#

class Script < ActiveRecord::Base
  has_many :characters
  has_many :references, :through => :characters
  
  validates :name, :uniqueness => true
  
  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end
