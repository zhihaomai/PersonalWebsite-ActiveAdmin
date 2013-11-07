class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :title
      t.string :subtitle
      t.string :tags
      t.string :url

      t.timestamps
    end
  end
end
