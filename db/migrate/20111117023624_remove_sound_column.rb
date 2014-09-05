class RemoveSoundColumn < ActiveRecord::Migration
  def up
    remove_column :characters, :sound_id
  end

  def down
    add_column :characters, :sound_id, :integer
  end
end
