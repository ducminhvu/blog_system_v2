class CreateEntries < ActiveRecord::Migration
  def up
    create_table :entries do |t|
      t.integer :user_id
      t.string :title
      t.string :content      
      t.timestamps
    end
  end

  def down
    drop_table :entries
  end
end
