class CreateAddFullnameToPlayers < ActiveRecord::Migration
  def change
    create_table :add_fullname_to_players do |t|

      t.timestamps null: false
    end
  end
end
