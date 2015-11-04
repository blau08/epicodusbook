class AddSocialToStudents < ActiveRecord::Migration
  def change
    add_column :students, :facebook, :string
    add_column :students, :linkedin, :string
    add_column :students, :github, :string
    add_column :students, :other, :string
  end
end
