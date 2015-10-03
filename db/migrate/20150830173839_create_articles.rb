class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :top_image
      t.string :content
      t.string :content_image

      t.timestamps null: false
    end
  end
end
