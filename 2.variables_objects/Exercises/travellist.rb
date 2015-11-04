user1 = "quoc"
country1 = "vietnam"
country2 = "korea"
country3 = "japan"

city1 = "Ho Chi Minh"
city2 = "Seoul"
city3 = "Tokyo"
city4 = "Hanoi"

activity1 = "Sports"
activity2 = "Cinema"

current_time = Time.new
formatted_time = current_time.strftime("%w %a %B at %I:%M%p")


puts "#{user1.capitalize} has added in #{city1.upcase} activity #{activity1.upcase}. \n @#{country1.capitalize} on #{formatted_time}"

puts ""

puts "#{user1.capitalize} has added in #{city2.upcase} activity #{activity2.upcase}. \n @#{country2.capitalize} on #{formatted_time}"

puts ""

puts " #{country1.capitalize} ".center(30, '*')


puts "#{city1}: \n Activity: #{activity1.upcase}"

puts ""

puts " #{country2.capitalize} ".center(30, '*')


puts "#{city2}: \n Activity: #{activity2.upcase}"