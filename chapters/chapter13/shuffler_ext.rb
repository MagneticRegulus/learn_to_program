# had issue with the class...needed to use self instead of passing a variable.

class Array
  def shuffler
    shuffled = []
    while self.size > 0 do
      n = self.length
      index_of_unshuffled = rand(n) - 1
      shuffled.push(self[index_of_unshuffled])
      self.delete_at(index_of_unshuffled)
    end
    puts shuffled
  end
end

# Not a perfect shuffle...not too sure how to make it better!

words = []

puts 'Welcome to the word shuffler.'
puts 'I take one word per line (ONLY ONE) and save them for you.'
puts 'When ready, hit enter, and I will shuffle your words.'

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
puts 'Your list of shuffled words:'
puts words.shuffler
puts
puts 'If you think you are missing words, you did not pay attention to my instructions.'
