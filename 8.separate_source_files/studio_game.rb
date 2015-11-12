# 3. Update the Main Program

# Allow to execute those files
require_relative 'player'
require_relative 'game'

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




