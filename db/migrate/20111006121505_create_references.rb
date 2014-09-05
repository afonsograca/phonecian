class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :author
      t.string :publiser
      t.string :title
      t.date :year

      t.timestamps
    end
  end
end
