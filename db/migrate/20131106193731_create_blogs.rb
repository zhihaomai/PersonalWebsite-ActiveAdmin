class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :image
      t.string :body
      t.string :link

      t.timestamps
    end
  end
end
