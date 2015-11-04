puts "* Write a Method *****"
puts " "

#Define a say_hello method that takes a name paramter and prints name
def say_hello(name) # name is local variable inside say_hello method > isnt a scope
  puts "I'm #{name.capitalize}"
end

say_hello("quoc")
say_hello("an")
say_hello("kayo")

puts ""

#Change say_hello method so that the returned value is printed to the console. 
def say_hello(name1)
  "I'm #{name1.capitalize}"
end

puts say_hello("emiel")

puts ""

puts "* Add a Healh Parameter *****"
puts ""

def say_hello(name2, health)
  "I'm #{name2.capitalize} with a health of #{health}"
end

puts say_hello("jan", 60) # call the player's name and health
puts say_hello("kees", 125)

puts ""

puts "* Set a Default Parameter Value *****"
puts ""

#Set health parameter as default value of 50
def say_hello(name3, health=50)
  "I'm #{name3.capitalize} with a health of #{health}"
end

puts say_hello("koen") #print default 50
puts say_hello("hugo", 75)

puts ""

puts "* Calling Other Methods *****"
puts ""

# Add player's information to include the current time, which is returned by another method.
def time
  current_time = Time.new
  current_time.strftime("%I:%M:%S")
end

def say_hello(name4, health=100)
  "I'm #{name4.capitalize} with a health of #{health} as of #{time}"
end

puts say_hello("stub")
puts say_hello("oki", 125)





