class DColumn < ActiveRecord::Migration
  def change
    remove_column :students, :url
  end
end
