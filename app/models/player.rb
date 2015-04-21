class Player < ActiveRecord::Base

  has_many :nodes
  has_many :games

  before_create { |player| player.generate_code }

  def generate_code
    loop do
      chars = ('a'..'z').to_a + ('A'..'Z').to_a + ('0'..'9').to_a
      self.code = (0...5).collect { chars[Kernel.rand(chars.length)] }.join
      break if Player.count(:code => self.code) < 1
    end
  end

end
