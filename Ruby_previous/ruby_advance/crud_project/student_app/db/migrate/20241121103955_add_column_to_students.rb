class AddColumnToStudents < ActiveRecord::Migration[7.2]
  def change
    add_column :students, :S_Id, :integer
    add_column :students, :department, :text
    add_column :students, :created_at, :datetime
    add_column :students, :upated_at, :datetime
  end
end
