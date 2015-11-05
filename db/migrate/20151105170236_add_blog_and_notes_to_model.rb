class AddBlogAndNotesToModel < ActiveRecord::Migration
  def change
    add_column :blogs, :name, :string
    add_column :blogs, :title, :string
    add_column :blogs, :blog, :string

  end
end
