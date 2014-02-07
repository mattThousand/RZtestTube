class AddPassingColToRequest < ActiveRecord::Migration
  def up
  	add_column :requests, :passing, :boolean
  end

  def down
  	remove_column :requests, :passing
  end
end
