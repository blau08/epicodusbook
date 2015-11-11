class User < ActiveRecord::Base
  has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_attached_file :image, :styles => { :large => "800x500#", :medium => "300x300>", :thumb => "34x34#" }, :default_url => "/images/:style/missing.png"
         validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png", "image/gif"]

end
