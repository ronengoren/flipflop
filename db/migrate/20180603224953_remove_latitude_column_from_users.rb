class RemoveLatitudeColumnFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :latitude, :integer
    remove_column :users, :longitude, :integer
    remove_column :users, :neighborhood, :string
    remove_column :users, :zip_code, :integer

  end
end
