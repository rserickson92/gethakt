class AddIdsToTables < ActiveRecord::Migration
  def change
  	add_column :comments, :user_id, :integer 
  	add_column :comments, :post_id, :integer
  	add_column :posts, :user_id, :integer
  	remove_column :users, :user_id, :integer  
  end
end
