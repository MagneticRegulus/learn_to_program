foods = ['fish', 'mayo', 'cookie']

puts foods #lists array objects
puts
puts foods.to_s #displays full array including punctuation (1 line)
puts
puts foods.join(', ') #display array objects on one line with commas
puts
puts foods.join(' :) ') + ' 8)' #displays array objects on one line with smileys

200.times do
  puts [] #nil
end

# attempt to puts array of other arrays

characters = [['Eleven', 'Mike', 'Dustin', 'Lucas', 'Will'],['Nancy', 'Barb', 'Steve', 'Jonathan']]

puts characters

# just lists all characters
