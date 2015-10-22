class AddImageToStudents < ActiveRecord::Migration
  def self.up
    change_table :students do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :students, :image
  end
end
