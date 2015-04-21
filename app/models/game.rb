class Game < ActiveRecord::Base
  belongs_to :white_player, class_name: 'Player', :foreign_key => 'whites_id'
  belongs_to :black_player, class_name: 'Player', :foreign_key => 'blacks_id'
end
