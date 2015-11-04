class AddProfileIdToComment < ActiveRecord::Migration
  def change
    add_column :comments, :profile_id, :integer
  end
end
