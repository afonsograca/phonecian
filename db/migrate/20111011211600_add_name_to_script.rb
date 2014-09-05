class AddNameToScript < ActiveRecord::Migration
  def change
    add_column :scripts, :name, :string
  end
end
