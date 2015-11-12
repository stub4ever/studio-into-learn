# 2.Create a Game Class Source file

# Ruby find the player.rb file relative to the current file > ready to run it from here 
require_relative 'player'

class Game
  attr_reader :title
  
  # An initialize method that allows you to create a game 
  def initialize (title)
    @title = title.capitalize
    @players = []
  end
  
  def add_player(a_player) # A method that adds player objects to the empty array
    @players.push(a_player)  # Using te push method
  end
  
  def play
    puts "There are #{@players.size} players in #{@title}: "
    @players.each do |player|
      puts player
    end
    
    @players.each do |player|
      player.blam
      player.w00t
    end
  end
end

player1 = Player.new("stuboki", 30)
game1 = Game.new("Call of Duty")


if __FILE__== $0
  game1.add_player(player1)
  puts game1.play
end

