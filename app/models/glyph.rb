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

class Glyph < ActiveRecord::Base
  has_and_belongs_to_many :characters
  has_many :references, :as => :ref
  
  validates :image, :uniqueness => true
  
  def self.search(search)
    if search
      where('image LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end
