# == Schema Information
#
# Table name: sounds
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  symbol     :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Sound < ActiveRecord::Base
  has_and_belongs_to_many :characters
  has_many :references, :as => :ref
  
  validates :name, :uniqueness => true
  
  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end
