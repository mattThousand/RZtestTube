class RemoveUnnecessaryTables < ActiveRecord::Migration
  def up
  	drop_table :h_params
  end

  def down
    create_table :h_params do |t|
      t.string :name
      t.integer :header_id

      t.timestamps
    end
  end
end
