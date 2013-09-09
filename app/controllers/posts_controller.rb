class PostsController < ApplicationController
  def new
    @posts = Post.new
  end
  
  def create
   
    @posts = Post.new(posts_params)
    
    if @posts.save
      redirect_to topic_path(@posts)
    else
      render 'new'
    end
  end
  
  private
    def posts_params
      
      params.require(:post).permit(:user_id , :posts, :topic_id)
      
    end
end
