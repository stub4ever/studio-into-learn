class List
  attr_accessor :list
  attr_reader :total
  
  def initialize(list)
    @list = list.upcase
    @activities = []
  end
  
  def add_activity(a_activity)
    @activities.push(a_activity)
  end
  
  def remove_activity(a_activity)
    @activities.delete_at(0)
  end
  
end


class Activity
  attr_accessor :name
  attr_reader :activities, :likes
  
  def initialize(activity, likes_count=0)
    @activity = name.capitalize 
    @likes_count = likes_count
  end
  
  def add
  end
  
  def remove
  end
  
end

class User
  attr_accessor :name
  attr_reader :followers
  
  def initialize(user, followers=0)
    @user = user.capitialize
    @followers = followers
  end
  
  def feed
  end
  
  def like
    @likes_count += 1
    puts "#{@user} has like #{@activity}"
  end
  
  def unlike
    @likes -= 1
    puts "#{@user} has unlike #{@activity}"
  end
end

