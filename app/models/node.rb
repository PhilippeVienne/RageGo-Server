class Node < ActiveRecord::Base
  belongs_to :player
  belongs_to :game

  validates :game_id, :allow_nil => false, :allow_blank => false, presence: true
  validates :player_id, :allow_nil => false, :allow_blank => false, presence: true
  validates :data, :allow_nil => false, :allow_blank => false, presence: true
  validate :player_is_in_game
  private
  def player_is_in_game
    errors.add(:player, 'Player should be in the game') if game.blacks_id != player_id && game.whites_id != player_id
  end

end
