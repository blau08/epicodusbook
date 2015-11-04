class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.column :name, :string
      t.column :quote, :string
      t.attachment :image
      t.column :user_id, :integer

      t.timestamps null: false
    end
  end
end
