class Comment < ActiveRecord::Base
  belongs_to :student
  belongs_to :user
  belongs_to :profile
  validates :comment, :presence => true

  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("comment like ?", "%#{query}%")
  end
end
