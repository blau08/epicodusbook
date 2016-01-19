class EditStudentField < ActiveRecord::Migration
  def change
    add_column :students, :lastname, :string
    add_column :students, :firstname, :string
    add_column :students, :age, :string
    add_column :students, :gender, :string
    add_column :students, :cohort, :string
    add_column :students, :internship, :string
    add_column :students, :company, :string
  end
end
