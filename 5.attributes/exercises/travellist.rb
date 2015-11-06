class List
  attr_accessor :user, :listname, :activity
  attr_reader :city, :list
  
  def initialize(user, listname, activity, city, list=0)
    @user = user.capitalize
    @listname = listname.upcase
    @activity = activity.upcase
    @city = city.upcase
    @list = list
  end
  
  def time
    current_time = Time.new
    formatted_time = current_time.strftime("%w %B")
  end
  
  def add
    @list += 1
    puts "\n#{@user} added #{@activity} in #{@listname} List on #{time}"
  end
  
  def destroy
    @list -= 1
    puts "\n#{@user} deleted #{@activity} in #{@listname} List on #{time}"
  end
  
  def lists 
    puts ''
    puts " #{@listname} list of #{@user} "
    puts " #{@activity} - #{@city} ".center(32, '*')
  end
    
  def change=(new_listname)
    @listname = new_listname.upcase
  end
  
end

list1 = List.new("quoc", "vietnam tour", "sky diving", "ho chi minh", 1)
list1.add
list1.lists
puts list1.list

list2 = List.new("quoc", "Korea dream", "wonder park", "seoul", 3)
list2.add
list2.lists
puts list2.list

list2.change = "KOREEEHA dream guides"
list2.lists
puts list2.list


