class RemoveTitleIdFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :title_id, :string
  end
end
