class AddIndexToEntriesUserId < ActiveRecord::Migration
  def up
    add_index :entries, :user_id
  end

  def down
    remove_index :entries, :user_id
  end
end
