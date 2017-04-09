def wedding_number number
  if number < 0 # No negative numbers
    return 'Please enter a number that isn\'t negative.'
  end
  if number >= 1000000000000
    return 'I\'m sorry, please enter a smaller number.'
  end
  if number == 0
    return 'zero'
  end
  # No more special cases! No more returns!
  num_string = '' # This is the string we will return
  ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
  tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
  teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
  # "left" is how much of the number we still have left to write out.
  # "write" is the part we are writing out right now.
  left = number
  write = left/1000000000 # How many billions left?
  left = left - write*1000000000 # Subtract off those billions
  if write > 0
    billions = wedding_number write #recursion
    num_string = num_string + billions + ' billion and'
    if left > 0
      num_string = num_string + ' ' # adds space between words
    end
  end
  write = left/1000000 # How many millions left?
  left = left - write*1000000 # Subtract off those millions
  if write > 0
    millions = wedding_number write #recursion
    num_string = num_string + millions + ' million and'
    if left > 0
      num_string = num_string + ' ' # adds space between words
    end
  end
  write = left/1000 # How many thousands left?
  left = left - write*1000 # Subtract off those thousands
  if write > 0
    thousands = wedding_number write #recursion
    num_string = num_string + thousands + ' thousand and'
    if left > 0
      num_string = num_string + ' ' # adds space between words
    end
  end
  write = left/100 # How many hundreds left?
  left = left - write*100 # Subtract off those hundreds
  if write > 0
    hundreds = wedding_number write #recursion
    num_string = num_string + hundreds + ' hundred and'
    if left > 0
      num_string = num_string + ' ' # adds spaces between words
    end
  end
  write = left/10 # How many tens left?
  left = left - write*10 # Subtract off those tens
  if write > 0
    if ((write == 1) and (left > 0)) # need to make a special exception for teens
      num_string = num_string + teenagers[left-1]
      left = 0
    else
      num_string = num_string + tens_place[write - 1]
    end
    if left > 0
      num_string = num_string + ' and ' # replaces hyphenation
    end
  end
  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.
  if write > 0
    num_string = num_string + ones_place[write - 1]
  end
  num_string
end

# I have only gone up to the billions and have capped this program to stay under 1 trillion
# I believe I have understood this concept and may come back to this excericise to complete
# at a later date.

puts 'I will take your numbers and turn them into an unnessasarily long wedding invitaion.'
puts 'Please try:'
puts

while true
  num = gets.chomp
  if num.empty?
    break
  else
    num = num.to_i
    puts wedding_number num
    puts
  end
end

puts 'Have a nice day!'
puts
