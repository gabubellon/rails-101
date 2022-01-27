class AddUserFields < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :lastname, :string
    add_column :users, :nickname, :string
    add_column :users, :birthdate, :date
  end
end
