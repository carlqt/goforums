module ForumsHelper
  
  def lastpost_timestamp(id)
    topic = Topic.find(id)
    timestamp = topic.posts.last
    lastpost_timestamp = timestamp.created_at
  end
  
end
