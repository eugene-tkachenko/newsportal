class AddTopimageToArticles < ActiveRecord::Migration
  def self.up
    add_attachment :articles, :main_image
  end

  def self.down
    remove_attachment :articles, :main_image
  end
end
