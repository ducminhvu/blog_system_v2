class AddIndexsToCommentsUserIdEntryId < ActiveRecord::Migration
  def up
    add_index :comments, [:user_id, :entry_id]
  end

  def down
    remove_index :comments, [:user_id, :entry_id]
  end
end
