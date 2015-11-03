puts "* Print Player info *****"
puts " "

name1 = 'quoc'  #variable assign to value
health1 = 60

# A single quoted string
puts name1 + '\'s' + ' health is ' + health1.to_s

# Double-quoted string and interpolate with values
puts "#{name1}\'s health is #{health1}"

# Change the health with decimal (float) and without decimal (integer)
puts "#{name1}'s health is #{health1 / 15.0}"
puts "#{name1}'s health is #{health1 / 15}"

puts " "
puts "* Print a list of players *****"
puts " "

# Output each player's name separate line and indented with a tab
puts "Players: \n\tquoc\n\tkayo\n\tan"
puts " "

# Add variables for each player's name
name2 = "quoc"
name3 = "kayo"
name4 = "an"

puts "Players: \n\t#{name2}\n\t#{name3}\n\t#{name4}"

