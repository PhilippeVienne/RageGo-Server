class CreateNodes < ActiveRecord::Migration
  def change
    create_table :nodes do |t|
      t.integer :game_id
      t.integer :player_id
      t.string :data

      t.timestamps null: false
    end
  end
end
