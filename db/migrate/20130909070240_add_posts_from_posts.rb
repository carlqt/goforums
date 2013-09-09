class AddPostsFromPosts < ActiveRecord::Migration
  def change
    add_column :posts, :posts, :string
  end
end
