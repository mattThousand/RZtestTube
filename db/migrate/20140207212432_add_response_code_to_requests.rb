class AddResponseCodeToRequests < ActiveRecord::Migration
  def up
  	add_column :requests, :response_code, :string
  end

  def down
  	remove :requests, :response_code
  end
end
