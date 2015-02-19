class CreateDeleteTablePlayers < ActiveRecord::Migration
  def change
    create_table :delete_table_players do |t|

      t.timestamps null: false
    end
  end
end
