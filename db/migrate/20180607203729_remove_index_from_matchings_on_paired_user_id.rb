class RemoveIndexFromMatchingsOnPairedUserId < ActiveRecord::Migration[5.2]
  def change
    remove_index :matchings, :paired_user_id
  end
end
