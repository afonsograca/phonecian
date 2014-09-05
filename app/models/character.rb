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

class Character < ActiveRecord::Base
  has_ancestry
  belongs_to :script
  has_many :references, :as => :ref
  belongs_to :parent, :class_name => "Character", :foreign_key => "character_id"
  has_and_belongs_to_many :sounds
  has_and_belongs_to_many :glyphs
  
  validates :name, :presence => true
  validates_uniqueness_of :name, :scope => :script_id, :message => "Character with the same name already exists for this script"

  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end
