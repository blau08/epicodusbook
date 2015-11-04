class Profile < ActiveRecord::Base
  belongs_to :user
  has_attached_file :image, :styles => { :large => "800x500#", :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
  validates :name, :presence => true
  validates :quote, :presence => true
  validates :image, :presence => true
end
