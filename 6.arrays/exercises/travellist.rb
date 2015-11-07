class TravelList
  attr_accessor :city, :activity
  attr_reader :total
  
  def initialize(city, activity, total=0)
    @city = city.upcase
    @activity = activity.upcase
    @total = total
  end
  
  def time
    current_time = Time.new
    format_time = current_time.strftime("%w %B")
  end

  def add 
    @total += 1
    puts "Added an new activity #{@activity} in #{@city} city at #{time}"
  end
  
  def destroy
    @total -= 1
    puts "Removed #{@activity} from #{@city} city at #{time}"
  end
  
  def score
    puts "#{@city} has now #{@total} activity in the list"
  end
end

vietnam = TravelList.new("ho chi minh", "Cu Chi Tunnels & VIP Speedboat Tour")
vietnam1 = TravelList.new("ho chi minh", "Full-Day Mekong Delta Tour")
vietnam2 = TravelList.new("ho chi minh", "Mekong River Pool", 1)

korea1 = TravelList.new("seoul", "Historic Seoul: Half-Day Walking Tour")
korea2 = TravelList.new("seoul", "Seoul: Guided Full-Day Royal Palace and Shopping Tour", 1)
korea3 = TravelList.new("seoul", "Lotte World & Duty-Free Shop")


vietnamList = [vietnam, vietnam1, vietnam2]

vietnamList.shift # Remove first ho chi minh activity
vietnam3 = TravelList.new("ho chi minh", "QUoC HOMeSPaCE", 2) # add new object
vietnamList.push(vietnam3) # push into array

puts "Daily Feeds ".center(30, '.')
puts ""
vietnamList.each do |vietnam|
  puts vietnam.add
  puts vietnam.score
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~"
end

koreaList = [korea1, korea2, korea3]

koreaList.shift # Remove first item
koreaList.pop # Remove last item

koreaList.each do |korea|
  puts korea.destroy
  puts korea.score
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~"
end


























