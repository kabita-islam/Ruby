class CreateInfos < ActiveRecord::Migration[7.1]
  def change
    create_table :infos do |t|

      t.timestamps
    end
  end
end
