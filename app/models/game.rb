class Game < ActiveRecord::Base
  belongs_to :white_player, class_name: 'Player', :foreign_key => 'whites_id'
  belongs_to :black_player, class_name: 'Player', :foreign_key => 'blacks_id'
  has_many :nodes, :dependent => :delete_all

  validates :whites_id, presence: true
  validates :blacks_id, presence: true
  validate :whites_can_not_be_blacks

  def whites_can_not_be_blacks
    errors.add(:white_player, 'Can not be equal to black player') if whites_id == blacks_id
  end

  def self.waiting_for(player)
    Game.where(white_player: player, waiting: true)
  end
end
