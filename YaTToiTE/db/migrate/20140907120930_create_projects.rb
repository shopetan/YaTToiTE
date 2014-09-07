class CreateProjects < ActiveRecord::Migration
  def change
    if(!ActiveRecord::Base.connection.tables.include?("projects"))
      create_table :projects do |t|
        t.string :title

        t.timestamps
      end
    end
  end
end
