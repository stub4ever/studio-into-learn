require_relative 'user'

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


if __FILE__ == $0
  list1 = List.new("Ho Chi Minh")
  item1 = User.new("Quoc","SkyDiving", 95)
  
  list1.add_activity(item1)
  puts list1.stats
end
