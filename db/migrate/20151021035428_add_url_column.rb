class AddUrlColumn < ActiveRecord::Migration
  def change
    add_column :students, :url, :string
  end
end
