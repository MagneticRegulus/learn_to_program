words = []

def sorter unsorted
  sorted = []
  lower = []
  unsorted.each do |x|
    lower.push (x.downcase)
  end
  while unsorted.size > 0 do
    smallest = lower.min
    index_of_smallest = lower.index(smallest)
    sorted.push(unsorted[index_of_smallest])
    unsorted.delete_at(index_of_smallest)
    lower.delete_at(index_of_smallest)
  end
  puts sorted
end

# See chapter10/word_sorter.rb for reference

puts 'Welcome to the word sorter.'
puts 'I take one word per line (ONLY ONE) and save them for you.'
puts 'When ready, hit enter, and I will sort your words in alphabetical order.'

while true
  word = gets.chomp
  if word.empty? # also acceptable "if word = '' "
    break
  else
    words.push(word.split.first) # looked up the variable methods here
  end
end

puts
puts 'Your list of words:'
puts sorter(words)
puts
puts 'If you think you are missing words, you did not pay attention to my instructions.'
