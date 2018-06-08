class RemoveIndexFromMatchings < ActiveRecord::Migration[5.2]
  def change
    remove_index :matchings, :paired_user_id_id


  end
end
