now = Time.new
puts 'Welcome to the birthday machine!'
puts 'In what year where you born?'
year = gets.chomp.to_i
puts 'What month?'
month = gets.chomp.to_i
puts 'What day?'
day = gets.chomp.to_i
birthday = Time.local(year, month, day)
age = ((((now - birthday)/60)/60)/24)/365
age = age.to_i
puts "You're #{age} years old! #{age} spanks for you!"
age.times do
  print "SPANK\n"
end

# Need to fix this program to throw errors when someone types a string for a year or date
# AND to accept both integers and strings for months.
