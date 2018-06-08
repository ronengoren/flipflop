class AddIndexToMatchingsInPairedUserId < ActiveRecord::Migration[5.2]
  def change
    add_index :matchings, :paired_user_id

  end
end
