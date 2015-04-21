class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :whites_id
      t.integer :blacks_id

      t.timestamps null: false
    end
  end
end
