class ChangeIndexInMatchings < ActiveRecord::Migration[5.2]
  def change
    remove_index :matchings, :user_id
    add_index :matchings, :user_id


  end
end
