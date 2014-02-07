class AddApplicationIdToRequests < ActiveRecord::Migration
  def up
  	add_column :requests, :application_id, :integer
  end

  def down
  	remove_column :requests, :application_id
  end	
end
