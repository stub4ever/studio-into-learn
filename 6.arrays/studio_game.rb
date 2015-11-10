puts "* 1. Create a Array of Players and Iterate *****"
puts ""

# Array 1. indices always start at zero 2. hold on to an ordered collection of objects  3. Allow ask the array for the object at a given position

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

player1 = Player.new('quoc', 100)
player2 = Player.new('stub', 60)
player3 = Player.new('oki', 120)


# Create an array named players that contains all three Player objects 
players = [player1, player2, player3]

# Print out the size of array
puts "There are #{players.size} players in the game:"
# The block associated with the each method, call puts and pass in the player object that each handed to the block (the block parameter)
players.each do |player|
  puts player
end

puts ""
puts "* 2. Create More Blocks *****"
puts ""

puts "Report from each player's ONLY health:"
players.each do |player|
  puts player.health
end

puts "___"

# remove an player and substitute in a new player
players.pop # Method pop removes the last element in an array 
players.shift # Remove the first item
players.delete_at(0) # delete an element at a particular index:

player4 = Player.new("kayo", 89)
players.push(player4) # Push new player in array

player5 = Player.new("an", 300)
players.push(player5)


puts "Report random w00ted and blammed:"
players.each do |player|
  puts ""
  puts player.w00t
  puts player
end

puts "___"






