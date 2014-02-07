class AddBodyColumnToRequests < ActiveRecord::Migration
  def up
  	add_column :requests, :body, :text
  end

  def down
  	remove_column :requests, :body
  end
end
