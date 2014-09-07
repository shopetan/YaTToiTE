class CreateContents < ActiveRecord::Migration
  def change
    create_table :contents do |t|
      t.string :title

      t.timestamps
    end
  end
end
