class RemoveDateColumns < ActiveRecord::Migration
  def up
    remove_column :glyphs, :beginPeriod
    remove_column :glyphs, :endPeriod
  end

  def down
    add_column :glyphs, :beginPeriod, :date
    add_column :glyphs, :endPeriod, :date
  end
end
