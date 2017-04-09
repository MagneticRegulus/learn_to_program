# Improvement
# puts 'Hello, what\'s your name?'
# name = gets.chomp
# puts 'Hello, ' + name.capitalize + '.'
# if name.capitalize == 'Nancy'
  # puts 'What a lovely name!'
# elsif name.capitalize == 'Barb'
  # puts 'What a lovely name!'
#end

# Even Better
puts 'Hello, what\'s your name?'
name = gets.chomp
puts 'Hello, ' + name.capitalize + '.'
if name.capitalize == 'Nancy' || name.capitalize == 'Barb'
  puts 'What a lovely name!'
end
