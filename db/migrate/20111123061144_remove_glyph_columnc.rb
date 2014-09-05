class RemoveGlyphColumnc < ActiveRecord::Migration
  def up
    remove_column :characters, :glyph_id
  end

  def down
    add_column :characters, :glyph_id, :integer
  end
end
