class User
  attr_accessor :user
  attr_reader :rates
  
  def initialize(user, activity, rates=0)
    @user = user.capitalize
    @activity = activity.capitalize
    @rates = rates
    @inbox = []
    @followers = []
  end
  
  def to_s
    ""
  end
  
  def thumbs_up
    @rates += 1
    "#{@user} has thumbs up the #{@activity}!"
  end
  
  def thumbs_down
    @rates -= 1
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
      puts message.thumbs_up
    end
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

if __FILE__ == $0
  user1 = User.new("stuboki", "Skydiving")
  
  puts user1.user
  puts user1.thumbs_up
  puts user1.thumbs_down
  puts user1.show_activity
  puts user1.message
end
