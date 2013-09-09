class ForumsController < ApplicationController
  def home
    @topics = Topic.find(:all, :order => "created_at DESC, is_sticky")
  end
end
