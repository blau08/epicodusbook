class Student < ActiveRecord::Base
  acts_as_votable
  has_many :comments
  has_attached_file :image, :styles => { :large => "800x500#", :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates :name, :presence => true
  validates :quote, :presence => true
  validates :image, :presence => true

  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("lower(name) like ?", "%#{query}%")
  end
end
