puts 'Whats your full name?'
puts ''
puts 'First Name:'
first_name = gets.chomp
puts ''
puts 'Middle Name:'
middle_name = gets.chomp
puts ''
puts 'Last Name:'
last_name = gets.chomp
name_char = first_name.length + middle_name.length + last_name.length
name = first_name + ' ' + middle_name + ' ' + last_name
puts ''
puts 'Did you know there are ' + name_char.to_s + ' characters in your name, ' + name + '?'
