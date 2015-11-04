def time
  current_time = Time.new
  formatted_time = current_time.strftime("%a %w %B at %I:%M%p")
end

def user(name, activity, city)
 puts "___"
 puts ""
 puts "#{name.capitalize} has added activity #{activity.upcase} in the list of #{city.upcase} city on #{time}. "
end

def country(name, city, activity)
  puts ""
  puts " #{name} ".center(30, '*')
  puts "\n#{city.upcase}: \n Activity: #{activity.upcase}"
end

user("quoc", "sports", "ho cho minh")
country("Vietnam", "ho chi minh", "sports")


user("quoc", "cinema", "seoul")
country("korea", "seoul", "cinema")