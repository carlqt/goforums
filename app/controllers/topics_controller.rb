class TopicsController < ApplicationController
  before_filter :authenticate_user!, :except => :show
  
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

dfasgfggadtaegdg


featuring this branch is so thursday ago huehuehue
more features are here baby