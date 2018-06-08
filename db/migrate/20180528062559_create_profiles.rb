class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.integer    :user_id, :null => false
      t.string  :user_name
      t.integer        :age
      t.integer    :heights
      t.integer    :weights
      t.string       :city
      t.string    :country
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
