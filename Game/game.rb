require './players'
require './questions'

class Game
  def initialize
    @player1 = Player.new('Desiree', 8)
    @player2 = Player.new('Opponent', 8)
    @current_player = @player1
  end

  def turn
  end

  def score
  end

  def start game
    puts "Game has begun"
    puts "/n"

end