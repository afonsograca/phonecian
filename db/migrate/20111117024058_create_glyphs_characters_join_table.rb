class CreateGlyphsCharactersJoinTable < ActiveRecord::Migration
  def up
     create_table :characters_glyphs, :id => false do |t|
        t.integer :character_id
        t.integer :glyph_id
      end
  end

  def down
    drop_table :characters_glyphs
  end
end
