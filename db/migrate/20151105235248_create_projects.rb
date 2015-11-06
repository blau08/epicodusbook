class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.column :name, :string
      t.column :link, :string

      t.timestamps null: false
    end
  end
end
