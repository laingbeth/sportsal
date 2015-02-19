class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :fullname
      t.integer :team_id

      t.timestamps null: false
    end
  end
end
