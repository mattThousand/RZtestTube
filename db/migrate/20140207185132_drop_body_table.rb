class DropBodyTable < ActiveRecord::Migration
  def up
  	drop_table :bodies
  end

  def down
    create_table :bodies do |t|
      t.integer :request_id

      t.timestamps
    end
   end
end
