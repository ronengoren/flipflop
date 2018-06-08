class AddIndexToConversations < ActiveRecord::Migration[5.2]
  def change
    add_index :conversations, [:author_id, :receiver_id], unique: true

  end
end
