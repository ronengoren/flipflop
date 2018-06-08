class ChangeEightColumnInUser < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :height, :decimal
  end
end
