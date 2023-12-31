require_relative 'item'

class Game < Item
  attr_accessor :multiplayer, :last_played_at, :author

  def initialize(date, multiplayer, last_played_at)
    super(date)
    @multiplayer = multiplayer
    @last_played_at = last_played_at
  end

  def can_be_archived?
    super && last_played_at < 2.years.ago
  end
end
