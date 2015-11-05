class CreateControllers < ActiveRecord::Migration
  def change
    create_table :controllers do |t|
      t.string :blog
      t.string :new
      t.string :create
      t.string :update
      t.string :destroy
      t.string :index
      t.string :show
      t.string :edit

      t.timestamps null: false
    end
  end
end
