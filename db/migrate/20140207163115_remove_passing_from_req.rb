class RemovePassingFromReq < ActiveRecord::Migration
  def up
  	remove_column :requests, :passing
  end

  def down
  	add_column :requests, :passing, :string
  end
end
