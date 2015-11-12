class User
  attr_accessor :user
  attr_reader :rates
  
  def initialize(user,activity, rates=0)
    @user = user.capitalize
    @activity = activity.capitalize
    @rates = rates
    @inbox = []
    @followers = []
  end
  
  def to_s
    "#{@User}"
  end
  
  def thumbs_up
    @rates += 1
    "#{@user} has thumbs up the #{@activity}!"
  end
  
  def thumbs_down
    @rate -= 1
    "#{@user} has thumbs down the #{@activity}!"
  end
  
  def show_activity
    "#{@activity}"
  end
  
  def receive(a_message)
    @inbox.push(a_message)
  end
  
  def message
    puts "#{@user} inbox has #{@inbox.size} unread messages:"
    @inbox.each do |message|
      puts message
      puts message.thumbs_up
    end
  end
  
  def name
    "#{@user} follower:"
  end
  
  def follower_add(a_follower)
    @followers.push(a_follower)
  end
  
  def follower
    puts "#{@user} profile stats:"
    puts ""
    puts "(#{@followers.size}) Followers"
    @followers.each do |name|
      puts "- #{name.user}"
    end
    
  end
  
end

class List
  attr_accessor :title
  attr_reader :activities 
  
  def initialize(title)
    @title = title.upcase
    @activities = []
  end
  
  def add_activity(a_activity)
    @activities.push(a_activity)
  end
  
  def remove_activity(a_activity)
    @activities.delete_at(0)
  end
  
  def stats    
    puts "#{@title} (#{@activities.size}) :"
    @activities.each do |activity|
      puts activity
      puts " #{activity.show_activity} - #{activity.rates} Rates "      
    end
    
  end
end



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






