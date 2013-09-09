class AddUserIdToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :user_id, :integer
    add_column :topics, :title, :string
  end
end
