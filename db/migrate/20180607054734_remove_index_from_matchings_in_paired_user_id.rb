class RemoveIndexFromMatchingsInPairedUserId < ActiveRecord::Migration[5.2]
  def change
    remove_column :matchings, :paired_user_id_id

  end
end
