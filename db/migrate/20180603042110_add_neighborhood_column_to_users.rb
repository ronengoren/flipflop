class AddNeighborhoodColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :neighborhood, :string
    add_column :users, :zip_code, :integer
  end
end
