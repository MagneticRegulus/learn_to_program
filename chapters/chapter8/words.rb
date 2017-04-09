puts 'Welcome to the word sorter.'
puts 'I take one word per line (ONLY ONE) and save them for you.'
puts 'When ready, hit enter, and I will sort your words in alphabetical order.'

words = []

while true
  word = gets.chomp.downcase
  if word.empty? # also acceptable "if word = '' "
    break
  else
    words.push(word.split.first) # looked up the variable methods here
  end
end

puts
puts 'Your list of words:'
puts words.sort
puts
puts 'If you think you are missing words, you did not pay attention to my instructions.'

# Not happy with this one...would like to give error warning when more than one word
# is typed in. 
