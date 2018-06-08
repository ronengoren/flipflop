class ChangePairedIdToStringInMatchings < ActiveRecord::Migration[5.2]
  def change
    change_column :matchings, :paired_user_id, :string

  end
end
