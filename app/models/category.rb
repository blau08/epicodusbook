class Category < ActiveRecord::Base
  has_many :comments
end
