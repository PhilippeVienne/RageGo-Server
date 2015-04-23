class Player < ActiveRecord::Base

  has_many :nodes, :dependent => :delete_all
  has_many :games_as_white, :class_name => 'Game', :dependent => :delete_all, :foreign_key => :whites_id
  has_many :games_as_black, :class_name => 'Game', :dependent => :delete_all, :foreign_key => :blacks_id

  before_create { |player| player.generate_code }
  validates :code, uniqueness: true

  def generate_code
    loop do
      chars = ('a'..'l').to_a + ('A'..'L').to_a + ('2'..'9').to_a
      self.code = (0...5).collect { chars[Kernel.rand(chars.length)] }.join
      break if Player.where(:code => self.code).count < 1
    end
  end

end
