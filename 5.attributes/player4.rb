puts "* 1. Make a Readable Attribute *****"
puts ""

class Player
  # Add a read-only attribute to the Player class so that a player's health can be accessed from outside the class. 
  attr_reader :name, :level
  
  def initialize(name, level)
    @user = name.capitalize
    @level = level
    @name = name.upcase
  end
  
  def to_s
    "My #{@user} account is #{@level}"
  end
  
end

user1 = Player.new("hydeout", 30)
user2 = Player.new("aetherius", 21)
puts user1
puts user1.level #print: 30
puts user1.name #print HYDEOUT
puts user2.name #print AETHERIUS


puts ""
puts "* 2. Make a Writable Attribute *****"
puts ""

# Change the Player class to expose the name attribute as both readable and writable.
class Player1
  attr_accessor :username
  attr_reader :likes
  
  def initialize(username, likes)
    @username = username.capitalize
    @likes = likes
  end
  
  # Ruby generated the default username= method for you when you used attr_accessor :name, but you can easily override it.
  def username=(new_name)
    @username = new_name.capitalize
  end
  
  def to_s
    "Quoc has change his/her name into '#{@username}'"
  end
end

user1 = Player1.new("quoc", 234)

#(outside of the class) change Quoc's name to "Stub" using the name attribute and print out
user1.username = "stub"
puts user1

puts ""
puts "* 3. Make a Virtual Attribute *****"
puts ""

class Player2
  attr_accessor :username
  attr_reader :likes
  
  def initialize(username, likes)
    @username = username.capitalize
    @likes = likes
  end
  
  #A virtual accessor (a method) called bonus that returns the player's                        health plus the number of characters in the player's name. 
  def bonus
    @likes + @username.length
  end
  
  def to_s
    "#{@username} have added a bonus method and hit '#{bonus}' bonus"
  end
end

user1 = Player2.new("quoc", 234)
puts user1



 
 
 
 
 
 
 