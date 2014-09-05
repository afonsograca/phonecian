class AddDetailsToScripts < ActiveRecord::Migration
  def up
    add_column :scripts, :beginPeriod, :string
    add_column :scripts, :endPeriod, :string
  end
  def down
    remove_column :scripts, :beginPeriod
    remove_column :scripts, :endPeriod
  end
end
