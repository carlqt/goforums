# == Schema Information
#
# Table name: topics
#
#  id         :integer          not null, primary key
#  created_at :datetime
#  updated_at :datetime
#  user_id    :integer
#  title      :string(255)
#  is_sticky  :boolean
#

class Topic < ActiveRecord::Base
  has_many :posts, :dependent => :destroy
  accepts_nested_attributes_for :posts
  belongs_to :user
  
  validates :title, :presence => true
  

end
