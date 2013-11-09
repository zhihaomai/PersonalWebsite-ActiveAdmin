class RenameBlogLinkToDate < ActiveRecord::Migration
  def change
  	rename_column :blogs, :link, :date
  end
end
