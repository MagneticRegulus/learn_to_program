puts 'Before leaving Hawkins National Lab, please complete a short survey.'
puts ''
puts 'What is your favorite number?'
number = gets.chomp.to_i + 1
bigger = number.to_s
puts ''
puts 'That\'s a nice number!'
puts 'However, ' + bigger + ' is a bigger number...'
puts 'The bigger, the better!'
puts 'Ready to leave?'
gets
puts bigger + ' has been stored as your favorite number.'
puts 'Have a nice day!'
