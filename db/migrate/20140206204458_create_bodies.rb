class CreateBodies < ActiveRecord::Migration
  def change
    create_table :bodies do |t|
      t.integer :request_id

      t.timestamps
    end
  end
end
