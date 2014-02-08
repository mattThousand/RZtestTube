class MakeReqBodyText < ActiveRecord::Migration
  def change
  	drop_table :b_params
  end

  def down
    create_table :b_params do |t|
      t.string :name
      t.integer :body_id

      t.timestamps
    end
  end
end
