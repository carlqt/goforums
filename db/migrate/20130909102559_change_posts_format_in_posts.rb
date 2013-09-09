class ChangePostsFormatInPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.change :posts, :text
    end
  end
 
  def self.down
    change_table :posts do |t|
      t.change :posts, :string
    end
  end
end
