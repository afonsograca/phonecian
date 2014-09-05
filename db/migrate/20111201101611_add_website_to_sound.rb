class AddWebsiteToSound < ActiveRecord::Migration
  def up
    add_column :sounds, :website, :string
  end
  def down
    add_column :sounds, :website
  end
end
