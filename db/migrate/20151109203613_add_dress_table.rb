class AddDressTable < ActiveRecord::Migration
  def change
    create_table :dresses do |t|
      t.column :name, :string
      t.column :quote, :string
      t.column :count, :integer
      t.timestamps
    end
  end
end
