class WaitingWhiteJoinsGameMigration < ActiveRecord::Migration
  def change
    add_column :games, :waiting, :boolean
  end
end
