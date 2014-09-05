class AddAncestryToCharacters < ActiveRecord::Migration
  def self.up
    add_column :characters, :ancestry, :string
    add_index :characters, :ancestry
  end
  def self.down
    remove_column :characters, :ancestry
    remove_index :characters, :ancestry
  end
end
