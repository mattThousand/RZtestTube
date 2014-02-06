class CreateHeaders < ActiveRecord::Migration
  def change
    create_table :headers do |t|
      t.integer :request_id

      t.timestamps
    end
  end
end
