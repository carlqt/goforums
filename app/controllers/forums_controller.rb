class ForumsController < ApplicationController
  def home
    @topics_anouncement = Topic.find(:all, :order => "created_at DESC, is_sticky")
    @topics = Topic.order("created_at DESC, is_sticky").page(params[:page]).per(5)
    
    #@topics = Topic.find(:all, :order => "created_at DESC, is_sticky").page(1).per(5)
    #@page_topics =  Topic.page(1).per(5)
    
  end
  
  def blank
    
  end
end
