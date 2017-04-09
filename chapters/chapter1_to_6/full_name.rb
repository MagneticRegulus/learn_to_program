puts 'Welcome to the Hawkins National Lab.'
puts 'You must identify yourself before entry is allowed.'
puts ''
puts 'First Name:'
first = gets.chomp
puts ''
puts 'Middle Name:'
middle = gets.chomp
puts ''
puts 'Last Name:'
last = gets.chomp
puts ''
puts 'Full name is ' + first + ' ' + middle + ' ' + last + '...'
puts ''
puts 'Checking for clearance...'
puts 'Record located...'
puts 'Press any key...'
gets
puts first + ' ' + middle + ' ' + last + ' cleared for entry!'
