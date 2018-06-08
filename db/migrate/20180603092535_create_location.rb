class CreateLocation < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :neighborhood
      t.integer :zip_code
      t.integer :user_id
    end
  end
end
