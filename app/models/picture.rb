class Picture < ActiveRecord::Base
  has_attached_file :image, :styles => { :large => "800x500#", :medium => "1920x1080#", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]
end
