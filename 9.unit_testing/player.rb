# 1. Create a Player Source File
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

# Allow to execute if we run player.rb and wont loads in any other rb files
if __FILE__ == $0
  player1 = Player.new("stuboki", 100)

  puts player1.w00t
  puts player1.blam
  puts player1
end
