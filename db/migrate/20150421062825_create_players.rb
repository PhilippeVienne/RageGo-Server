class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :code
      t.boolean :playing

      t.timestamps null: false
    end
  end
end
