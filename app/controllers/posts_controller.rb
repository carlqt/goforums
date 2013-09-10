class PostsController < ApplicationController
  def new
    @posts = Post.new
  end
  
  def create
   
    @posts = Post.new(posts_params)
    
    if @posts.save
      @topic = Topic.find(@posts.topic_id)
      @post_page = @topic.posts.page(params[:page]).per(10).num_pages
      redirect_to topics_page_path(@posts.topic_id, params[:page] = @post_page)
    else
      render 'new'
    end
  end
  
  private
    def posts_params
      
      params.require(:post).permit(:user_id , :posts, :topic_id)
      
    end
end
