puts "* 1. Create a Player Object *****"
puts ""

# Class names always start with an uppercase letter, and multi-word class names have each word capitalized
class Player  
end

# To create a new object, you call the new method of the associated class. Use the Player class to create a new player object and assign it to a variable named player1. 
player1 = Player.new

puts ""
puts "* 2. Initialize the Object's State *****"
puts ""

class Player  # Objects have unique state and a common set of methods (behaviors).

  
  #An initialize method inside your Player class that takes more parameters
  def initialize(name, health=50) 
    @name = name.capitalize  # Instances variables start with an @ sign.
    @health = health         # save each parameter in an instance variable 
  end 
  
end

player1 = Player.new("quoc")
puts player1.inspect   #Allow to inspect the object 1 with instance variable


puts ""
puts "* 3. Define the Object's Behavior *****"
puts ""

class Player1
  
  def initialize(name, health=50)
    @name = name.capitalize
    @health = health
  end
  
  def say_hello
    "I'm #{@name} with a health of #{@health}"
  end
  
end

user1 = Player1.new("kayo")
puts user1.say_hello # calling say_hello method

user2 = Player1.new("an", 100)
puts user2.say_hello # calling say_hello method


puts ""
puts "* 4. Add State-Changing Behavior *****"
puts ""

class Player2 
  
  def initialize(name, health=50)
    @name = name.capitalize
    @health = health
  end
  
  def blam # instance method to Player2
    @health -= 10 # Allow to decreases player's health by 10
     puts "#{@name} got blammed!" # Print the message
  end
  
  def woot # instance method to Player2
    @health += 15 # Allow to increases player's health by 15
    puts "#{@name} got w00ted! " # Print the message
  end
  
  def message 
    "Auto message: #{@name} got a health of #{@health}"
  end
end

user1 = Player2.new("stub")
user1.blam
puts user1.message

user2 = Player2.new("oki")
user2.woot
puts user2.message



puts ""
puts "* 5. Print the Object *****"
puts ""

# If you define an instance method called to_s in a class, Ruby will automatically call to_s when the object needs to be rendered as a string.

class Player3 
  
  def initialize(name, health=100)
    @name = name.capitalize
    @health = health
  end
  
  def blam
    @health -= 20
    puts "#{@name} got blammed!"
  end
  
  def woot
    @health += 25 
    puts "#{@name} got w00ted!"
  end
  
  def to_s # Rename say_hello to to_s
    "Hello #{@name}, Your health is at this moment #{@health}"
  end
end

user1 = Player3.new("hugo", 200)
puts user1 # calls the to_s method to get the player's string representation                        by passing player object to puts


puts ""
puts "* Calculator Class *****"
puts ""


class Calculator
  def initialize(a, b)
    @a = a
    @b = b
  end

  def add
    @a + @b
  end

  def subtract
    @a - @b
  end
end


calc = Calculator.new(20, 11)
puts calc.add
puts calc.subtract

