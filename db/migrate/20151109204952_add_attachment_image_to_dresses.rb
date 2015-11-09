class AddAttachmentImageToDresses < ActiveRecord::Migration
  def self.up
    change_table :dresses do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :dresses, :image
  end
end
