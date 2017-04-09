def english_number number
  if number < 0 # No negative numbers
    return 'Please enter a number that isn\'t negtive.'
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
  write = left/100 # How many hundreds left?
  left = left - write*100 # Subtract off those hundreds
  if write > 0
    hundreds = english_number write #recursion
    num_string = num_string + hundreds + ' hundred'
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
      num_string = num_string + '-' # hyphenates
    end
  end
  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.
  if write > 0
    num_string = num_string + ones_place[write - 1]
  end
  num_string
end

puts 'I will take your numbers and turn them into plain English.'
puts 'Please try:'
puts

while true
  num = gets.chomp
  if num.empty?
    break
  else
    num = num.to_i
    puts english_number num
    puts
  end
end

puts 'Have a nice day!'
puts
