class CreateHParams < ActiveRecord::Migration
  def change
    create_table :h_params do |t|
      t.string :name
      t.integer :header_id

      t.timestamps
    end
  end
end
