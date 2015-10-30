class Comment < ActiveRecord::Base
  belongs_to :student
  belongs_to :user
  validates :comment, :presence => true
end
