# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#  posts      :text(255)
#  topic_id   :integer
#

class Post < ActiveRecord::Base
  belongs_to :user
  belongs_to :topic
end
