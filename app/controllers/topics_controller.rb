class TopicsController < ApplicationController
  def show
    @topics = Topic.find(params[:id])
    @posts = @topics.posts.page(params[:page]).per(10)
    @user = User.find(@topics.user_id)
  end
  
  def new
    @topics = Topic.new
    @topics.posts.build      # => build a few posts in memory for @topics
  end
  
  def create
    @topics = Topic.new(topics_params)
    
    
    if @topics.save
      
      flash[:notice] = "New post added"
      redirect_to topic_path(@topics)
    else
      render 'new'
    end
    
  end
  
  private
    def topics_params
      
      params.require(:topic).permit(:title, :user_id, posts_attributes: [:user_id, :posts])
      
    end
    
end
