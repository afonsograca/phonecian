class CreateSoundsCharactersJoinTable < ActiveRecord::Migration
  def up
    create_table :characters_sounds, :id => false do |t|
      t.integer :sound_id
      t.integer :character_id
    end
  end

  def down
    drop_table :characters_sounds
  end
end
