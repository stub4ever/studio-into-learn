class Player

  attr_accessor :name
  attr_reader :health

  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end
  
  def to_s
    "I'm #{@name} with a health of #{@health} and a score of #{score}."
  end

  def blam
    @health -= 10
    puts "#{@name} got blammed!"
  end
  
  def w00t
    @health += 15
    puts "#{@name} got w00ted!"
  end
  
  def score
    @health + @name.length
  end
  
end

# 1.Create a Game Class 
class Game
  attr_reader :title
  
  # An initialize method that allows you to create a game 
  def initialize (title)
    @title = title.capitalize
    @players = []
  end
  
# 2. Add Players 
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
      puts player
    end
  end
end

# we have both a Game and a Player class, we can tidy up the code outside of the classes (at the bottom of the file)

player1 = Player.new("quoc")
player2 = Player.new("stub", 60)
player3 = Player.new("oki", 120)

callofduty = Game.new("Call Of Duty")
puts callofduty.title  #output Call Of duty

puts ''

callofduty.add_player(player1)
callofduty.add_player(player2)
callofduty.add_player(player3)
callofduty.play

puts ''

player4 = Player.new("Alvin", 100)
player5 = Player.new("Simon", 60)
player6 = Player.new("Theo", 125)

chipmunks = Game.new("Chipmunks")
puts chipmunks.title

puts ''

chipmunks.add_player(player4)
chipmunks.add_player(player5)
chipmunks.add_player(player6)
chipmunks.play




