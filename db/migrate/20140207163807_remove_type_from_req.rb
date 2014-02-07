class RemoveTypeFromReq < ActiveRecord::Migration
  def up
  	remove_column :requests, :type
  	add_column :requests, :req_type, :string
  end

  def down
  	remove_column :requests, :req_type
  	add_column :requests, :type, :string
  end
end
