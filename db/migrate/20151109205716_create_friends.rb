class CreateFriends < ActiveRecord::Migration
  def change
    create_table :friends do |t|
      t.column :name, :string
      t.column :quote, :string
      t.column :count, :integer

      t.timestamps null: false
    end
  end
end
