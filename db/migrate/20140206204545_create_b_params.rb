class CreateBParams < ActiveRecord::Migration
  def change
    create_table :b_params do |t|
      t.string :name
      t.integer :body_id

      t.timestamps
    end
  end
end
