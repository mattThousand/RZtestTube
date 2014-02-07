class AddTypeToRequests < ActiveRecord::Migration
  def up
  	add_column :requests, :type, :string
  end

  def down
  	remove_column :requests, :type
  end
end
