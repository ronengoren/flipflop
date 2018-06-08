class AddNeighborhoodColumnTomatchings < ActiveRecord::Migration[5.2]
  def change
    add_column :matchings, :neighborhood, :string
    add_column :matchings, :zip_code, :integer
  end
end
