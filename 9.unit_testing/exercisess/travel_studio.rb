require_relative 'user'
require_relative 'list'

item1 = User.new("stuboki", "Skydiving")
item2 = User.new("Quoc", "Toy da tour", 22)
item3 = User.new("An", "Climb surivle jungle")
item4 = User.new("Stub", "clarkfil",34)

user1 = User.new("stuboki", "Skydiving")
user2 = User.new("Quoc", "Toy da tour", 22)
user3 = User.new("An", "Climb surivle jungle")
user4 = User.new("Stub", "clarkfil",34)

list1 = List.new("Ho chi minh")
list2 = List.new("Seoul")
list3 = List.new("tokyo")

user1.follower_add(user2)
user1.follower_add(user3)
puts user1.follower

user1.receive(user2)
user1.receive(user3)

puts user1.message

list1.add_activity(item1)
list2.add_activity(item2)
list3.add_activity(item3)
list3.add_activity(item4)

puts list1.stats
puts list2.stats
puts list3.stats






