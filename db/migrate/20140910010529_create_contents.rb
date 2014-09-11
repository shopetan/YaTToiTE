class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :Answer1
      t.string :Answer2
      t.string :Answer3

      t.timestamps
    end
  end
end
