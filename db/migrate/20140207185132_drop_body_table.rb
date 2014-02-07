class DropBodyTable < ActiveRecord::Migration
  def change
  	drop_table :bodies
  end
end
