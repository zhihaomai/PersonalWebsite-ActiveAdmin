class AddLikeAndDislike < ActiveRecord::Migration
  def change
  	add_column :blogs, :likes, :integer
  	add_column :blogs, :dislikes, :integer
  end
end
