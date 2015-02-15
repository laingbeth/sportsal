class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :position
      t.float :salary

      t.timestamps null: false
    end
  end
end
