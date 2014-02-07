class AddNameToRequests < ActiveRecord::Migration
  def up
  	add_column :requests, :name, :string
  end

  def down
  	remove_column :requests, :name
  end
end
