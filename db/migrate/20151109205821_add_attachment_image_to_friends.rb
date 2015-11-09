class AddAttachmentImageToFriends < ActiveRecord::Migration
  def self.up
    change_table :friends do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :friends, :image
  end
end
