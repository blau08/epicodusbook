class CreateUpdates < ActiveRecord::Migration
  def change
    create_table :updates do |t|
      t.string :lastname
      t.string :firstname
      t.string :age
      t.string :gender
      t.string :cohort
      t.string :internship
      t.string :company
      t.timestamps null: false
    end
  end
end
