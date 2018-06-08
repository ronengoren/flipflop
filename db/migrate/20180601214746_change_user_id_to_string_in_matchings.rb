class ChangeUserIdToStringInMatchings < ActiveRecord::Migration[5.2]
  def change
    change_column :matchings, :user_id, :string

  end
end
