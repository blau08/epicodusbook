class Comment < ActiveRecord::Base
  belongs_to :student
  belongs_to :user
  belongs_to :profile
  validates :comment, :presence => true
end
