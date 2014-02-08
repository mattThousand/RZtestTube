class AddHeadersToRequests < ActiveRecord::Migration
  def up
  	add_column :requests, :headers, :string
  end

  def down
  	remove_column :requests, :headers
  end
end
