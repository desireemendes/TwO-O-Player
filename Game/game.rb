require './players'
require './questions'

class Game
  def initialize
    @player1 = Player.new('Desiree')
    @player2 = Player.new('Opponent')
    @current_player = @player1
  end

  def start game
    puts "Game has begun"
    puts "/n"

    puts "Player One, whats your name?"
    @player1 = Player.new(gets.chomp)

    puts "Player Two, what's your name?"
    @player2 = Player.new(gets.chomp)

    puts "Time to solve some math!"
    puts "\n"
    @current_player = @player1

    game_play while (@player1.lives > 0 && @player2.lives > 0)
    end_game
  end

  def turn
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def end_game
    puts "- GAME OVER -"
    puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
    puts "\n"
  end
end