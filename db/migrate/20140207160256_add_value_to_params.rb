class AddValueToParams < ActiveRecord::Migration
  def up
  	add_column :h_params, :value, :string
  	add_column :b_params, :value, :string
  end

  def down
  	remove_column :h_params, :value
  	remove_column :b_params, :value
  end
end
