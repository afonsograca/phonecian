class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string :name
      t.references :character
      t.references :script
      t.references :glyph
      t.references :sound

      t.timestamps
    end
  end
end
