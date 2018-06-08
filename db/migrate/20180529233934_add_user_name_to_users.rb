class AddUserNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :user_name, :string
    add_column :users, :date_of_birth, :datetime
    add_column :users, :age, :integer
    add_column :users, :height, :integer
    add_column :users, :intrested_in, :string
    add_column :users, :sex, :string
    add_column :users, :country, :string
    add_column :users, :state, :string
    add_column :users, :city, :string
    add_column :users, :one_liner, :text
  end
end
