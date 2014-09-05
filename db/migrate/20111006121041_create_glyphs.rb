class CreateGlyphs < ActiveRecord::Migration
  def change
    create_table :glyphs do |t|
      t.string :image
      t.timestamp :beginPeriod
      t.timestamp :endPeriod

      t.timestamps
    end
  end
end
