class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.column :name, :string
      t.column :quote, :string

      t.timestamps null: false
    end
  end
end
