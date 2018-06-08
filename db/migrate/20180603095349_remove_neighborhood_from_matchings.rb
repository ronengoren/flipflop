class RemoveNeighborhoodFromMatchings < ActiveRecord::Migration[5.2]
  def change
    remove_column :matchings, :neighborhood, :string
    remove_column :matchings, :zip_code, :integer


  end
end
