class AddIndexToUsersInMatchings < ActiveRecord::Migration[5.2]
  def change
    add_index :matchings, :user_id, unique: true

  end
end
