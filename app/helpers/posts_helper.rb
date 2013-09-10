module PostsHelper
  def username(id)
    username = User.find(id).username
  end
end
