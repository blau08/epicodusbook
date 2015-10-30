class AddStudentIdToComments < ActiveRecord::Migration
  def change
    add_column :comments, :student_id, :integer
  end
end
