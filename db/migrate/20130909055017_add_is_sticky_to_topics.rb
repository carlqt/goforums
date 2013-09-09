class AddIsStickyToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :is_sticky, :boolean
  end
end
