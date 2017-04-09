words = []

def sorter unsorted
  sorted = []
  while unsorted.size > 0 do
    smallest = unsorted.min
    index_of_smallest = unsorted.index(smallest)
    sorted.push(smallest)
    unsorted.delete_at(index_of_smallest)
  end
  puts sorted
end

# I will be honest: I looked this one up online:
# https://www.ruby-forum.com/topic/4415960#1117249
# I was getting no where, and this was the first example I could find that made sense!

puts 'Welcome to the word sorter.'
puts 'I take one word per line (ONLY ONE) and save them for you.'
puts 'When ready, hit enter, and I will sort your words in alphabetical order.'

while true
  word = gets.chomp.downcase
  if word.empty? # also acceptable "if word = '' "
    break
  else
    words.push(word.split.first) # looked up the variable methods here
  end
end

#####

puts
puts 'Your list of words:'
puts sorter(words)
puts
puts 'If you think you are missing words, you did not pay attention to my instructions.'

### Getting nowhere!
