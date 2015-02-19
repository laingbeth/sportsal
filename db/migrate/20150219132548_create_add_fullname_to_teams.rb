class CreateAddFullnameToTeams < ActiveRecord::Migration
  def change
    create_table :add_fullname_to_teams do |t|

      t.timestamps null: false
    end
  end
end
