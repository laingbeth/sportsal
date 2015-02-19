class CreateAddColumns < ActiveRecord::Migration
  def change
    create_table :add_columns do |t|
      t.users, :
      t.admin, :
      t.boolean, :
      t.string :default
      t.string :false

      t.timestamps null: false
    end
  end
end
