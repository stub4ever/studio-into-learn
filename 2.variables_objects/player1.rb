#Output method capitalize on object name
name1 = "quoc"
health1 = 60 

puts "#{name1.capitalize} has a health of #{health1}."

puts ""

#Output method UPCASE on object name 
puts "#{name1.upcase} has a health of #{health1}."

puts ""

# use an intermediate variable to hold the text to be centered:
text1 = " #{name1.capitalize} has a health of #{health1} "
puts text1.center(40, '*')

# Chain the methods together on one line:
puts " #{name1.capitalize} has a health of #{health1} ".center(40, '*')

puts ""

# use an intermediate variable to hold the formatted name:
formatted_name = name1.capitalize.ljust(30, '.')
puts "#{formatted_name} #{health1} health"

# use an intermediate variable to hold the formatted name:
puts "#{name1.capitalize.ljust(30, '.')} #{health1} health"

puts ""

# Reverse the object name 
puts "#{name1.reverse} is reverse name of #{name1}"

puts ""

# Output the date and time
current_time = Time.new
formatted_time = current_time.strftime("%A %m/%d%/%Y at %I:%M%p")
puts "The game started on #{formatted_time}"




