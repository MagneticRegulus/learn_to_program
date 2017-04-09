# Original Version
#input = ''
#while input.downcase != 'bye'
  #puts input
  #input = gets.chomp
#end
#puts 'Come again soon!'

# Improved Version

while true
  input = gets.chomp
  puts input
  if input.downcase == 'bye'
    break
  end
end
puts 'Come again soon!'
