class Category < ActiveRecord::Base
  acts_as_votable
  has_attached_file :image, :styles => { :large => "800x500#", :medium => "300x300>", :thumb => "100x100#" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

  has_many :comments

  def upcount
    if self.count == nil
      self.count = 0
    end
    self.count += 1
  end
end
