$words = []

def shuffler unshuffled
  shuffled = []
  while unshuffled.size > 0 do
    n = unshuffled.length
    index_of_unshuffled = rand(n) - 1
    shuffled.push($words[index_of_unshuffled])
    unshuffled.delete_at(index_of_unshuffled)
  end
  puts shuffled
end

# Not a perfect shuffle...not too sure how to make it better!

puts 'Welcome to the word shuffler.'
puts 'I take one word per line (ONLY ONE) and save them for you.'
puts 'When ready, hit enter, and I will shuffled your words.'

while true
  word = gets.chomp.downcase
  if word.empty? # also acceptable "if word = '' "
    break
  else
    $words.push(word.split.first) # looked up the variable methods here
  end
end

#####

puts
puts 'Your list of shuffled words:'
puts shuffler($words)
puts
puts 'If you think you are missing words, you did not pay attention to my instructions.'
