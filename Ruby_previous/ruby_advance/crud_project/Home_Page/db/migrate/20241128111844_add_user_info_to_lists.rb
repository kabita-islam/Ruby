class AddUserInfoToLists < ActiveRecord::Migration[7.2]
  def change
    add_column :lists, :user_username, :string
    add_column :lists, :user_email, :string
  end
end
