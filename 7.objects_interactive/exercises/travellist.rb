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
    puts "#{@title} : (#{@activities.size})"
    @activities.each do |activity|
      puts activity
    end
    
    @activities.each do |user|
      user.thumbs_up
      user.thumbs_down
      puts user
    end
  end
  

end


class User
  attr_accessor :name
  attr_reader :rates
  
  def initialize(user,activity, rates=0)
    @user = user.capitalize
    @activity = activity.capitalize
    @rates = rates
  end
  
  def to_s
    "#{@User}"
  end
  
  def thumbs_up
    @rates += 1
    "#{@user} has thumbs up the #{@activity} :)"
  end
  
  def thumbs_down
    @rate -= 1
    "#{@user} has thumbs down the #{@activity} :("
  end
  
end

user1 = User.new("stuboki", "Skydiving")
user2 = User.new("Quoc", "Toy da tour")
user3 = User.new("An", "Climb surivle jungle")

list1 = List.new("Ho chi minh")
list2 = List.new("Seoul")
list3 = List.new("tokyo")








