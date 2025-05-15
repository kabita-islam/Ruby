class AddDescriptionToLists < ActiveRecord::Migration[7.2]
  def change
    add_column :lists, :roll, :integer
    add_column :lists, :grade, :string
  end
end
