class CreateTests < ActiveRecord::Migration[7.2]
  def change
    create_table :tests do |t|
      t.string :name
      t.integer :age
      t.timestamps
    end
  end
end
