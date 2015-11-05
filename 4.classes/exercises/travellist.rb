class TravelList
  
  def initialize(name, user, activity, city, favorites=0)
    @name = name.upcase
    @user = user.capitalize
    @activity = activity.upcase
    @city = city.upcase
    @favorites = favorites
  end
  
  def time
    current_time = Time.new
    formatted_time = current_time.strftime("%a %w %B at %I:%M%p")
  end
  
  def add
    @favorites += 1 
    puts "\n#{@user} has added #{@activity} in the list of #{@name} on #{time}"
  end
  
  def destroy
    @favorites -= 1
    puts "\n#{@user} has deleted #{@activity} in the favorite list of #{@name} on #{time}"
    
  end
  
  def to_s
    "\n#{@user} has #{@favorites} favorites in #{@name} list"
  end
  
  def list
    puts ""
    puts " #{@name} ".center(30, '*')
    puts "\n#{@city}:"
  end
  
  def activity
    puts  "Activity: #{@activity}"
  end
end

item1 = TravelList.new("Trip in Vietnam", "quoc", "Basket Shoe Bal", "ho chi minh", 0)
item2 = TravelList.new("Trip in Vietnam", "quoc", "Swim sea Dive", "ho chi minh", 1)
item3 = TravelList.new("Trip in Vietnam", "quoc", "Sky Diving", "ho chi minh", 2)

item1.add
item2.add
item3.add

puts item3

puts item1.list
puts item1.activity
puts item2.activity
puts item3.activity